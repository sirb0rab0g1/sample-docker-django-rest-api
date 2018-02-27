from django.db import models


class BasicInformation(models.Model):
    name = models.CharField(max_length=100)
    age = models.PositiveSmallIntegerField(blank=True, null=True)
    address = models.CharField(max_length=100)
    contact_number = models.CharField(max_length=100, blank=True)
