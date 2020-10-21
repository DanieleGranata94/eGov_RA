from django.db import models
from django.core.validators import FileExtensionValidator

# Create your models here.

class System(models.Model):
    name = models.CharField(max_length=100)

    class Meta:
        verbose_name="System"
        verbose_name_plural="Systems"

    def __str__(self):
        return self.name

class Process(models.Model):
    name = models.CharField(max_length=100)
    xml = models.FileField(upload_to='processes/xml/',
                           validators=[FileExtensionValidator(allowed_extensions=['xml','bpmn'])])
    system = models.ForeignKey(System, on_delete=models.CASCADE)

    class Meta:
        verbose_name="Process"
        verbose_name_plural="Processes"

    def __str__(self):
        return self.name

    def delete(self, *args, **kwargs):
        self.xml.delete()
        super().delete(*args, **kwargs)

class Asset(models.Model):
    name = models.CharField(max_length=100)
    asset_type = models.CharField(max_length=100)
    process = models.ForeignKey(Process, on_delete=models.CASCADE)

    class Meta:
        verbose_name="Asset"
        verbose_name_plural="Assets"

    def __str__(self):
        return self.name

class Asset_type(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=500)

    class Meta:
        verbose_name="Asset_type"
        verbose_name_plural="Assets_types"

    def __str__(self):
        return self.name