from django.core.files.storage import FileSystemStorage
from django.shortcuts import render, redirect

from .forms import ProcessForm
from .models import Process

# Create your views here.

def upload(request):
    if request.method == 'POST':
        form = ProcessForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('process_view')
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

def process_view(request):
    return render(request,'process_view.html')