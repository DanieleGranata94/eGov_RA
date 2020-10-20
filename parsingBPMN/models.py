from django.db import models
from django.core.validators import FileExtensionValidator

# Create your models here.
class Process(models.Model):
    name = models.CharField(max_length=100)
    xml = models.FileField(upload_to='processes/xml/',
                           validators=[FileExtensionValidator(allowed_extensions=['xml','bpmn'])])

    class Meta:
        verbose_name="Process"
        verbose_name_plural="Processes"

    def __str__(self):
        return self.name

    def delete(self, *args, **kwargs):
        self.xml.delete()
        super().delete(*args, **kwargs)

class Task(models.Model):
    name = models.CharField(max_length=100)
    task_type = models.CharField(max_length=100)
    process = models.ForeignKey(Process, on_delete=models.CASCADE)

    class Meta:
        verbose_name="Task"
        verbose_name_plural="Tasks"

    def __str__(self):
        return self.name