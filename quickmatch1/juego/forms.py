
from socket import fromshare
from django import forms
from juego.models import *
from random import shuffle

class barajarform (forms.ModelForm):
    class Meta:
        model = Cartas
        fields = ['clasificacion']

    

    
    
