-- sample.lua: Archivo de ejemplo para probar esquemas de colores en Neovim

-- Comentarios de una línea
--[[ 
Comentario 
multi-línea
]]

-- Variables y tipos
local numero = 42
local decimal = 3.14159
local texto = "Esto es una cadena"
local texto_largo = [[
Este es un texto
de múltiples líneas
en Lua.
]]
local booleano = true
local nulo = nil
local tabla = {
    clave = "valor",
    ["otra-clave"] = 123,
    [1] = "primero",
    anidada = {
        x = 10,
        y = 20
    }
}

-- Palabras clave
if numero > 40 then
    print("Mayor que 40")
elseif numero < 30 then
    print("Menor que 30")
else
    print("Entre 30 y 40")
end

for i = 1, 10, 2 do
    local suma = i + numero
end

while numero > 0 do
    numero = numero - 1
    if numero == 30 then break end
end

repeat
    numero = numero + 1
until numero >= 50

-- Funciones
function saludar(nombre)
    return "Hola, " .. nombre .. "!"
end

local function factorial(n)
    if n <= 1 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

-- Metatablas y orientación a objetos
local Persona = {}
Persona.__index = Persona

function Persona.new(nombre, edad)
    local self = setmetatable({}, Persona)
    self.nombre = nombre
    self.edad = edad
    return self
end

function Persona:presentarse()
    print("Me llamo " .. self.nombre .. " y tengo " .. self.edad .. " años.")
end

local p = Persona.new("Carlos", 30)
p:presentarse()

-- Corrutinas
local co = coroutine.create(function()
    for i = 1, 5 do
        print("Corrutina: " .. i)
        coroutine.yield()
    end
end)

coroutine.resume(co)  -- Imprime "Corrutina: 1"
coroutine.resume(co)  -- Imprime "Corrutina: 2"

-- Manejo de errores
local status, resultado = pcall(function()
    error("¡Algo salió mal!")
end)

-- Operadores
local a, b = 10, 20
local suma = a + b
local resta = a - b
local multiplicacion = a * b
local division = a / b
local modulo = a % b
local potencia = a ^ 2
local negacion = not booleano
local concatenacion = "abc" .. "def"
local longitud = #texto
