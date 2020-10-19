from django.core.files.storage import FileSystemStorage
from django.core.serializers import python
from django.shortcuts import render, redirect


from .forms import ProcessForm
from .models import Process
from .bpmn_python_master.bpmn_python import bpmn_diagram_rep as diagram

# Create your views here.

def upload(request):
    if request.method == 'POST':
        form = ProcessForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            last_process = Process.objects.latest('id')
            return redirect('process_view',last_process.pk)
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
    bpmn_graph = diagram.BpmnDiagramGraph()
    bpmn_graph.load_diagram_from_xml_file(Process.objects.get(pk=pk).xml)
    lista = bpmn_graph.get_nodes()
    task_name = []
    task_type = []
    for tuple in lista:
        for dizionario in tuple:
            if type(dizionario) is dict:
                if dizionario['type'].endswith("Task"):
                    task_name.append(dizionario['node_name'])
                    task_type.append(dizionario['type'])
    process_info = zip(task_name,task_type)
    return render(request,'process_view.html',{
        'process_info':process_info
    })