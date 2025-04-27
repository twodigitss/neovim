# sample.py: Archivo de ejemplo para probar esquemas de colores en Neovim

# Comentarios de una línea
"""
Comentario 
multi-línea o
docstring
"""

'''
Otra forma de
comentario multi-línea
'''

# Variables y tipos
entero = 42
decimal = 3.14159
complejo = 1 + 2j
texto = "Esto es una cadena"
texto_largo = """
Este es un texto
de múltiples líneas
en Python.
"""
booleano = True
nulo = None

# Colecciones
lista = [1, 2, 3, "cuatro", [5, 6]]
tupla = (1, 2, 3, "cuatro")
conjunto = {1, 2, 3, 4}
diccionario = {
    "clave": "valor",
    "numeros": [1, 2, 3],
    "anidado": {
        "x": 10,
        "y": 20
    }
}

# f-strings y formateo
nombre = "Carlos"
edad = 30
saludo1 = f"Hola, {nombre}! Tienes {edad} años."
saludo2 = "Hola, {}! Tienes {} años.".format(nombre, edad)
saludo3 = "Hola, %s! Tienes %d años." % (nombre, edad)

# Control de flujo
if entero > 40:
    print("Mayor que 40")
elif entero < 30:
    print("Menor que 30")
else:
    print("Entre 30 y 40")

# Match case (Python 3.10+)
match entero:
    case 0:
        print("Es cero")
    case 1 | 2 | 3:
        print("Es 1, 2 o 3")
    case 42:
        print("Es la respuesta")
    case _:
        print("Otro número")

# Bucles
for i in range(10):
    suma = i + entero
    if i == 5:
        continue
    if i == 8:
        break

contador = 0
while contador < 5:
    contador += 1
    if contador == 3:
        continue

# Comprensiones
cuadrados = [x**2 for x in range(10)]
pares = [x for x in range(20) if x % 2 == 0]
dict_comp = {str(x): x**2 for x in range(5)}
set_comp = {x**2 for x in range(5)}

# Funciones
def saludar(nombre, edad=None):
    """Esta es una función de saludo"""
    mensaje = f"Hola, {nombre}!"
    if edad is not None:
        mensaje += f" Tienes {edad} años."
    return mensaje

# Funciones con argumentos variables
def suma(*args, **kwargs):
    total = sum(args)
    for key, value in kwargs.items():
        print(f"{key}: {value}")
    return total

resultado = suma(1, 2, 3, extra="información", otra=42)

# Funciones anónimas (lambda)
cuadrado = lambda x: x**2
duplicar = lambda x: x * 2

# Decoradores
def mi_decorador(func):
    def wrapper(*args, **kwargs):
        print("Antes de llamar a la función")
        resultado = func(*args, **kwargs)
        print("Después de llamar a la función")
        return resultado
    return wrapper

@mi_decorador
def funcion_decorada():
    print("Dentro de la función")

# Clases
class Persona:
    # Variable de clase
    especie = "Homo sapiens"
    
    def __init__(self, nombre, edad):
        # Variables de instancia
        self.nombre = nombre
        self.edad = edad
        self._privado = "No tan accesible"
        self.__muy_privado = "Inaccesible directamente"
    
    def presentarse(self):
        print(f"Me llamo {self.nombre} y tengo {self.edad} años.")
    
    @classmethod
    def crear_desde_nacimiento(cls, nombre, anio_nacimiento):
        from datetime import date
        edad = date.today().year - anio_nacimiento
        return cls(nombre, edad)
    
    @staticmethod
    def es_adulto(edad):
        return edad >= 18
    
    @property
    def info(self):
        return f"{self.nombre}, {self.edad} años"
    
    def __str__(self):
        return self.info
    
    def __repr__(self):
        return f"Persona('{self.nombre}', {self.edad})"

# Herencia
class Empleado(Persona):
    def __init__(self, nombre, edad, puesto):
        super().__init__(nombre, edad)
        self.puesto = puesto
    
    def presentarse(self):
        super().presentarse()
        print(f"Trabajo como {self.puesto}.")

# Manejo de excepciones
try:
    resultado = 10 / 0
except ZeroDivisionError as e:
    print(f"Error: {e}")
except Exception as e:
    print(f"Error general: {e}")
else:
    print("No hubo errores")
finally:
    print("Esto siempre se ejecuta")

# Contextos (with)
with open("archivo.txt", "w") as f:
    f.write("Hola, mundo!")

# Generadores
def contador_hasta(n):
    i = 0
    while i < n:
        yield i
        i += 1

for num in contador_hasta(5):
    print(num)

# Async/await (Python 3.5+)
import asyncio

async def tarea():
    print("Empezando")
    await asyncio.sleep(1)
    print("Terminando")

# Type hints (Python 3.5+)
from typing import List, Dict, Tuple, Optional, Union, Any, Callable

def procesar_datos(items: List[int]) -> Dict[str, int]:
    resultado: Dict[str, int] = {}
    for i, item in enumerate(items):
        resultado[f"item_{i}"] = item * 2
    return resultado

# Dataclasses (Python 3.7+)
from dataclasses import dataclass

@dataclass
class Punto:
    x: int
    y: int
    
    def distancia_origen(self) -> float:
        return (self.x**2 + self.y**2)**0.5

# Módulos y paquetes
import math
from collections import defaultdict, Counter
from os import path
import numpy as np  # Requiere instalación

# f-strings con formateo (Python 3.6+)
pi = math.pi
print(f"Pi redondeado: {pi:.2f}")
dinero = 1234.56
print(f"Precio: ${dinero:,.2f}")

# Operadores
a = 10
b = 20

suma = a + b
resta = a - b
multiplicacion = a * b
division = a / b
division_entera = a // b
modulo = a % b
potencia = a ** 2

es_igual = a == b
es_diferente = a != b
es_menor = a < b

logico_and = True and False
logico_or = True or False
logico_not = not True

# Operador walrus (Python 3.8+)
if (n := len(lista)) > 3:
    print(f"La lista tiene {n} elementos")

# Métodos de strings
texto = "   Hola, mundo!   "
mayusculas = texto.upper()
minusculas = texto.lower()
capitalizado = texto.capitalize()
sin_espacios = texto.strip()
reemplazado = texto.replace("mundo", "Python")
dividido = texto.split(",")

# Métodos de listas
numeros = [1, 2, 3, 4, 5]
numeros.append(6)
numeros.insert(0, 0)
numeros.remove(3)
ultimo = numeros.pop()
numeros.sort(reverse=True)
numeros.reverse()

# Métodos de diccionarios
datos = {"a": 1, "b": 2}
datos.update({"c": 3, "d": 4})
valor = datos.get("x", "no existe")
claves = datos.keys()
valores = datos.values()
elementos = datos.items()

# Métodos de conjuntos
conjunto_a = {1, 2, 3, 4}
conjunto_b = {3, 4, 5, 6}
union = conjunto_a | conjunto_b
interseccion = conjunto_a & conjunto_b
diferencia = conjunto_a - conjunto_b
dif_simetrica = conjunto_a ^ conjunto_b

# Operaciones con bytes
datos_bytes = b"hola"
datos_codificados = "hola".encode("utf-8")
datos_decodificados = datos_bytes.decode("utf-8")

# Números binarios, octales y hexadecimales
binario = 0b1010  # 10 en decimal
octal = 0o12  # 10 en decimal
hexadecimal = 0x0A  # 10 en decimal
