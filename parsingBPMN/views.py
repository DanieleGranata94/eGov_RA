from django.core.files.storage import FileSystemStorage
from django.core.serializers import python
from django.shortcuts import render, redirect


from .forms import ProcessForm
from .models import Process, Task
from .bpmn_python_master.bpmn_python import bpmn_diagram_rep as diagram

# Create your views here.

def upload(request):
    if request.method == 'POST':
        form = ProcessForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            last_process = Process.objects.latest('id')
            bpmn_graph = diagram.BpmnDiagramGraph()
            pk = last_process.pk
            bpmn_graph.load_diagram_from_xml_file(Process.objects.get(pk=pk).xml)
            lista = bpmn_graph.get_nodes()
            # task_list = []
            # task_attribute = []
            for tuple in lista:
                for dizionario in tuple:
                    if type(dizionario) is dict:
                        if dizionario['type'].endswith("Task"):
                            # list_attributes = []
                            new_task = Task(name=dizionario['node_name'], task_type=dizionario['type'],
                                            process=Process.objects.get(pk=pk))
                            new_task.save()
                            # task_list.append(Task.objects.latest('id'))
                            # if not dizionario['attribute']:
                            # task_attribute.append("empty")
                            # else:
                            # for e in dizionario['attribute']:
                            # list_attributes.append(e)
                            # task_attribute.append(list_attributes)
            # process_info = zip(task_list,task_attribute)
            return redirect('process_view', pk)
    else:
        form = ProcessForm()
    processes = Process.objects.all()
    return render(request,'upload.html',{
        'form':form,'processes':processes
    })

def delete(request,pk):
    if request.method == 'POST':
        process = Process.objects.get(pk=pk)
        process.delete()
    return redirect('upload')


def process_view(request,pk):
    task_list = Task.objects.filter(process=Process.objects.get(pk=pk))
    return render(request,'process_view.html',{
        'task_list':task_list
    })

def task_enrichment(request,task_id):
    return render(request,'task_enrichment.html')