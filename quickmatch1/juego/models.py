# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.contrib.auth.models import User


class Barajar(models.Model):
    idbarajar = models.IntegerField(primary_key=True)
    number_1 = models.CharField(db_column='1', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_2 = models.CharField(db_column='2', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_3 = models.CharField(db_column='3', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_4 = models.CharField(db_column='4', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_5 = models.CharField(db_column='5', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_6 = models.CharField(db_column='6', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_7 = models.CharField(db_column='7', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_9 = models.CharField(db_column='9', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_10 = models.CharField(db_column='10', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_11 = models.CharField(db_column='11', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_12 = models.CharField(db_column='12', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_13 = models.CharField(db_column='13', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_14 = models.CharField(db_column='14', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_15 = models.CharField(db_column='15', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_16 = models.CharField(db_column='16', max_length=45, blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.

    class Meta:
        managed = False
        db_table = 'barajar'


#class Cartas(models.Model):
#    idcartas = models.IntegerField(primary_key=True)
#    codigo = models.CharField(max_length=45, blank=True, null=True)
#    valor1 = models.CharField(max_length=45, blank=True, null=True)
#    valor2 = models.CharField(max_length=45, blank=True, null=True)

 #   class Meta:
 #       managed = False
 #       db_table = 'cartas'
class Cartas (models.Model):
    clasificacion = models.CharField(max_length=200)
    nombre = models.CharField(max_length=100)
    posicion = models.CharField(max_length=100)
    fuerza = models.CharField(max_length=100)
    tiro = models.CharField(max_length=100)
    velocidad = models.CharField(max_length=100)
    rendimiento_total = models.CharField(max_length=200)
    image = models.ImageField()

    def __str__(self):
        return self.clasificacion
    
    baraja = [clasificacion]
    
class Cartas_1 (models.Model):
    clasificacion = models.CharField(max_length=200)
    nombre = models.CharField(max_length=100)
    posicion = models.CharField(max_length=100)
    fuerza = models.CharField(max_length=100)
    tiro = models.CharField(max_length=100)
    velocidad = models.CharField(max_length=100)
    rendimiento_total = models.CharField(max_length=200)
    image = models.ImageField()

    def __str__(self):
        return self.clasificacion
    
    baraja = [clasificacion]


class Jugadores(models.Model):
    idjugadores = models.IntegerField(primary_key=True)
    usuario_idusuario = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='usuario_idusuario')
    activos = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'jugadores'


class Partida(models.Model):
    idpartida = models.IntegerField(primary_key=True)
    cantidadjugadores = models.CharField(max_length=45, blank=True, null=True)
    estado = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'partida'



class Tablero (models.Model):
    barajar = models.ForeignKey(Barajar, on_delete=models.CASCADE)
    jugadores = models.ForeignKey(Jugadores, on_delete=models.CASCADE)
    partida = models.ForeignKey(Partida, on_delete=models.CASCADE)

class Usuario(models.Model):
    idusuario = models.IntegerField(primary_key=True)
    usuario = models.CharField(max_length=45, blank=True, null=True)
    password = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'usuario'


