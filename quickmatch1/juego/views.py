from multiprocessing import context
from django.shortcuts import render, redirect,get_object_or_404
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login,authenticate

from juego.models import *
import random
from random import shuffle
from juego.forms import *
# Create your views here.

#creacion de la pagina de incio 
def inicio (request):
    #cart = Cartas_A.objects.all()#Hacemos  la consulta en base de daros para mostrar las cartas en la vista de iniio 
    #context = { #diccionario de datos para pasar datos dinamicos en el template 
    #    'cart':cart,
    #}
    return render (request, 'inicio.html') #retornamos la vista 

#formulario de registro de usuarios para el juego 

def register (request):
    if request.method == 'POST': #utilizamos el metodo de envio de datos d
        form = UserCreationForm(data = request.POST)#validamos el formulario de para registrarse 
        if form.is_valid():
            form.save()
            username = form.cleaned_data['username']#donde requerimos los datos que vamos a enviar 
            password = form.cleaned_data['password1']
            user = authenticate(username=username , password=password) #para que el usuario se authentifique
            login(request, user) #para que el usuario # si todas estas funciones se cumplen el usuario ya se puede logear 
            return redirect('inicio')
    
    else:
        form = UserCreationForm()

    context ={
        'form':form,
    }

    return render(request, 'register.html', context)

def juegos(request):
    barajar = Cartas_A.objects.all()

    
    context = {
        'barajar':barajar,
    }
    
    return render(request, 'juegos/iniciar_juego.html', context,)

def todas_las_cartas(request):
    detalle = Cartas_A.objects.all()
    

    context = {
        'detalle':detalle,
        
    }

    return render (request, 'Cart.html' ,context)

            

def barajar (request, clasificacion):

    """baraja = ['1A','2B','3C','4D','5A','6B','7','8','9','10','11','12',
    
    '13','14','15','16','17','18','19','20','21','22','23','24','25','26',
    '27','28','29','30'
    
    ]
    """
    cartas = Cartas_A.objects.get(clasificacion=clasificacion)
    baraja = [cartas]

    
    shuffle(baraja)
    var = print(baraja)

    context = {
        'var' : var,
    }

    return render(request,'juegos/baraja.html',context)