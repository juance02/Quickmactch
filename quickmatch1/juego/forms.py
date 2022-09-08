
from django import forms
from django.forms import models, ModelForm

from juego.models import Cartas




class ListadoProyecto(ModelForm):
    class Meta:
        model = Cartas
        form = Cartas
        fields = [
            'clasificacion',
            'nombre',
            'posicion',
            'tiro',
            'velocidad',
            'rendimiento_total',
            'image',
            ]
        Labels={
            
            'clasificacion':'clasificacion',
            'nombre ':' nombre',
            'posicion':' posicion',
            'tiro':' tiro',
            'velocidad':' velocidad',
            'rendimiento_total':' rendimiento_total',
            'image':' image',
            
        }

SELECT_CHOICES = (
  ('short', 'Short'),
  ('normal', 'Normal'),
  ('long', 'Long'),
)

class SelectForm(forms.Form):
    select_choice = models.ChoiceField(choices=SELECT_CHOICES)