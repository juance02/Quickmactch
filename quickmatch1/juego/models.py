from django.db import models

# Create your models here.
class Cartas_A (models.Model):
    nombre = models.CharField(max_length=100)
    posicion = models.CharField(max_length=100)
    fuerza = models.CharField(max_length=100)
    tiro = models.CharField(max_length=100)
    velocidad = models.CharField(max_length=100)
    rendimiento_total = models.CharField(max_length=200)
    image = models.ImageField()

    def __str__(self):
        return self.nombre
    
