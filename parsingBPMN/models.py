from django.db import models

# Create your models here.
class Process(models.Model):
    name = models.CharField(max_length=100)
    xml = models.FileField(upload_to='processes/xml/')

    class Meta:
        verbose_name="Process"
        verbose_name_plural="Processes"

    def __str__(self):
        return self.name