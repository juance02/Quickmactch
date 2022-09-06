from multiprocessing import context
from django.shortcuts import render, redirect,get_object_or_404
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login,authenticate

from juego.models import *
import random

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
print(random.randint(1, 32))
            


