from django.core.files.storage import FileSystemStorage
from django.shortcuts import render, redirect

from .forms import ProcessForm
from .models import Process

# Create your views here.

#def upload(request):
#    context = {}
#    if request.method =='POST':
#        uploaded_file = request.FILES['process_file']
#        fs = FileSystemStorage()
#        name = fs.save(uploaded_file.name, uploaded_file)
#    return render(request,'upload.html')

def process_list(request):
    return render(request,'upload.html')

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

def process_view(request):
    return render(request,'process_view.html')