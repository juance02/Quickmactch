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
    #cart = Cartas.objects.all()#Hacemos  la consulta en base de daros para mostrar las cartas en la vista de iniio 
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
    barajar = Cartas.objects.all()

    
    context = {
        'barajar':barajar,
    }
    
    return render(request, 'juegos/iniciar_juego.html', context,)

def todas_las_cartas(request):
    detalle = Cartas.objects.all()
    

    context = {
        'detalle':detalle,
        
    }

    return render (request, 'Cart.html' ,context)

            

def barajar (request):
    cartas = Cartas.objects.all()
    """baraja = [cartas,'1A','2B','3C','4D','5A','6B','7','8','9','10','11','12',
    '13','14','15','16','17','18','19','20','21','22','23','24','25','26',
    '27','28','29','30'
    ]"""

    baraja = [cartas]
    rangos = ["A","B","C","D","E","F","G","H"]
    
    barajarr = list(zip(baraja * len(rangos), rangos* len(baraja)))
    jugador1 = []
    jugador2 = []
    #juagador3 = []


    for i in range(1):
        random.shuffle(barajarr)
       
    jugador1.extend([barajarr.pop(), barajarr.pop()])
    jugador2.extend([barajarr.pop(), barajarr.pop()])

    var =print("Cartas jugador 2: {0}".format(jugador1))
    var =print("Cartas jugador 2: {0}".format(jugador2))    
    #shuffle(baraja)
    """
    cantidad = baraja
    if cantidad == '2':
        jugador1 = baraja(0,15)
        jugador1 = baraja(16,32)
    elif cantidad == '3':
        juagador1 = baraja(0,9)
        jugador2 = baraja(10,19)
        jugador3 = baraja(20,29)
        mesa = baraja(30,31)"""

    
    context = {
        'var' : var,
        
        
        } 
    return render(request,'juegos/baraja.html',context)

"""

palos = ["h","d","c","s"]
rangos = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]

# Generamos el mazo de las 52 cartas
mazo = list(zip(palos * len(rangos), rangos* len(palos)))

jugador1 = []
jugador2 = []
# Desordenamos el mazo
random.shuffle(mazo)

jugador1.extend([mazo.pop(), mazo.pop()])
jugador2.extend([mazo.pop(), mazo.pop()])

print("Cartas jugador 2: {0}".format(jugador1))
print("Cartas jugador 2: {0}".format(jugador2))


#for _ in range(10):
#   print('Combinación de 3 colores al azar=>',random.choices(color,weights=[1,1,1,5,1,1],k=3))
"""





