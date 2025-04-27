// sample.js: Archivo de ejemplo para probar esquemas de colores en Neovim

// Comentarios de una línea
/* 
  Comentario 
  multi-línea
*/

// Variables y tipos
const numero = 42;
let decimal = 3.14159;
var texto = "Esto es una cadena";
const textoTemplate = `
  Este es un texto
  de múltiples líneas
  en JavaScript.
  El valor es: ${numero}
`;
const booleano = true;
const nulo = null;
const indefinido = undefined;
const simbolo = Symbol('descripción');
const bigInt = 9007199254740991n;

// Arrays y objetos
const array = [1, 2, 3, "cuatro", { cinco: 5 }];
const objeto = {
  clave: "valor",
  "otra-clave": 123,
  metodo() {
    return this.clave;
  },
  anidado: {
    x: 10,
    y: 20
  }
};

// Destructuring
const { clave, anidado: { x, y } } = objeto;
const [primero, segundo, ...resto] = array;

// Clases
class Persona {
  #privado = "No accesible";
  
  constructor(nombre, edad) {
    this.nombre = nombre;
    this.edad = edad;
  }
  
  get info() {
    return `${this.nombre}, ${this.edad} años`;
  }
  
  static crear(datos) {
    return new Persona(datos.nombre, datos.edad);
  }
  
  presentarse() {
    console.log(`Me llamo ${this.nombre} y tengo ${this.edad} años.`);
  }
}

class Empleado extends Persona {
  constructor(nombre, edad, puesto) {
    super(nombre, edad);
    this.puesto = puesto;
  }
}

// Palabras clave y control de flujo
if (numero > 40) {
  console.log("Mayor que 40");
} else if (numero < 30) {
  console.log("Menor que 30");
} else {
  console.log("Entre 30 y 40");
}

for (let i = 0; i < 10; i++) {
  const suma = i + numero;
  if (i === 5) continue;
  if (i === 8) break;
}

let contador = 0;
while (contador < 5) {
  contador++;
}

do {
  contador--;
} while (contador > 0);

switch (numero) {
  case 40:
    console.log("Es 40");
    break;
  case 42:
    console.log("Es 42");
    break;
  default:
    console.log("Es otro número");
}

// Funciones
function saludar(nombre) {
  return `Hola, ${nombre}!`;
}

const factorial = function(n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
};

const flecha = (x, y) => {
  return x + y;
};

const simplificada = x => x * x;

// Async/await y promesas
async function fetchData() {
  try {
    const response = await fetch('https://api.example.com/data');
    const data = await response.json();
    return data;
  } catch (error) {
    console.error("Error:", error);
  }
}

const promesa = new Promise((resolve, reject) => {
  setTimeout(() => {
    if (Math.random() > 0.5) {
      resolve("Éxito");
    } else {
      reject(new Error("Falló"));
    }
  }, 1000);
});

// Operadores
const a = 10, b = 20;
const suma = a + b;
const resta = a - b;
const multiplicacion = a * b;
const division = a / b;
const modulo = a % b;
const potencia = a ** 2;
const incremento = a++;
const igualdad = a == b;
const estrictaIgualdad = a === b;
const y = a && b;
const o = a || b;
const nullish = a ?? b;
const ternario = a > b ? "mayor" : "menor";

// Map, Set y otras estructuras
const mapa = new Map();
mapa.set('clave', 'valor');

const conjunto = new Set([1, 2, 3, 3]);

// Iteradores y generadores
const iterable = [1, 2, 3];
for (const valor of iterable) {
  console.log(valor);
}

function* generador() {
  yield 1;
  yield 2;
  yield 3;
}

// RegExp
const regex = /abc\d+/g;
const coincide = regex.test("abc123");

// JSON
const jsonStr = JSON.stringify(objeto);
const parseado = JSON.parse('{"nombre":"Juan"}');
