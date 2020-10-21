from django.core.files.storage import FileSystemStorage
from django.core.serializers import python
from django.shortcuts import render, redirect


from .forms import ProcessForm, SystemForm
from .models import Process, Asset, System
from .bpmn_python_master.bpmn_python import bpmn_diagram_rep as diagram

# Create your views here.

def system_management(request):
    if request.method == 'POST':
        form = SystemForm(request.POST)
        if form.is_valid():
            form.save()
            last_system = System.objects.latest('id')
            return redirect('bpmn_process_management', last_system.pk)
    else:
        form = SystemForm()
    systems = System.objects.all()
    return render(request,'system_management.html',{
        'form':form,'systems':systems
    })

def bpmn_process_management(request,pk):
    if request.method == 'POST':
        form = ProcessForm(request.POST, request.FILES)
        if form.is_valid():
            saved_form = form.save(commit=False)
            saved_form.system_id = pk
            saved_form.save()
            last_process = Process.objects.latest('id')
            bpmn_graph = diagram.BpmnDiagramGraph()
            pk = last_process.pk
            bpmn_graph.load_diagram_from_xml_file(Process.objects.get(pk=pk).xml)
            lista = bpmn_graph.get_nodes()
            # task_list = []
            #task_attribute = []
            for tuple in lista:
                for dizionario in tuple:
                    if type(dizionario) is dict:
                        if dizionario['type'].endswith("Task"):
                            #list_attributes = []
                            new_task = Asset(name=dizionario['node_name'], asset_type=dizionario['type'],
                                            process=Process.objects.get(pk=pk))
                            new_task.save()
                            #if not dizionario['attribute']:
                            #    task_attribute.append("empty")
                            #else:
                            #    for e in dizionario['attribute']:
                            #        list_attributes.append(e)
                            #    task_attribute.append(list_attributes)
            # process_info = zip(task_list,task_attribute)
            return redirect('process_view', pk)
    else:
        form = ProcessForm()
    processes = Process.objects.all()
    return render(request,'bpmn_process_management.html',{
        'form':form,'processes':processes
    })

def delete_system(request,pk):
    if request.method == 'POST':
        system = System.objects.get(pk=pk)
        system.delete()
    return redirect('system_management')

def delete_process(request,pk):
    if request.method == 'POST':
        process = Process.objects.get(pk=pk)
        system_id = process.system.pk
        process.delete()
    return redirect('bpmn_process_management',system_id)


def process_view(request,pk):
    task_list = Asset.objects.filter(process=Process.objects.get(pk=pk))

    bpmn_graph = diagram.BpmnDiagramGraph()
    bpmn_graph.load_diagram_from_xml_file(Process.objects.get(pk=pk).xml)
    lista = bpmn_graph.get_nodes()
    task_attribute = []
    for tuple in lista:
        for dizionario in tuple:
            if type(dizionario) is dict:
                if dizionario['type'].endswith("Task"):
                    list_attributes = []
                    if not dizionario['attribute']:
                        task_attribute.append("empty")
                    else:
                        for e in dizionario['attribute']:
                            list_attributes.append(e)
                        task_attribute.append(list_attributes)

    task_info = zip(task_list,task_attribute)
    return render(request,'process_view.html',{
        'task_info':task_info
    })

def task_enrichment(request,task_id):
    return render(request,'task_enrichment.html')