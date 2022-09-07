from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Cartas_A (models.Model):
    clasificacion = models.CharField(max_length=200)
    nombre = models.CharField(max_length=100)
    posicion = models.CharField(max_length=100)
    fuerza = models.CharField(max_length=100)
    tiro = models.CharField(max_length=100)
    velocidad = models.CharField(max_length=100)
    rendimiento_total = models.CharField(max_length=200)
    image = models.ImageField()

    def __str__(self):
        return self.nombre

class Jugador (models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    carta = models.ForeignKey(Cartas_A, on_delete=models.CASCADE)
    

class Partida(models.Model):
    juagadores = models.ForeignKey(Jugador, on_delete=models.CASCADE)
    carta = models.ForeignKey(Cartas_A, on_delete=models.CASCADE)
    num_jugadores = models.CharField(max_length=100)
    
