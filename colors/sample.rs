// sample.rs: Archivo de ejemplo para probar esquemas de colores en Neovim

// Comentarios de una línea
/* 
   Comentario 
   multi-línea
*/

/// Documentación de una línea
/** 
 * Documentación 
 * multi-línea
 */

// Variables y tipos
fn main() {
    // Variables con tipos explícitos
    let entero: i32 = 42;
    let decimal: f64 = 3.14159;
    let booleano: bool = true;
    let caracter: char = 'a';
    let texto: &str = "Esto es una cadena";
    let texto_largo: &str = r#"
        Este es un texto
        de múltiples líneas
        en Rust.
    "#;
    
    // Inferencia de tipos
    let mut contador = 0;
    contador += 1;
    
    // Constantes
    const PI: f64 = 3.14159265359;
    
    // Tuplas
    let tupla: (i32, f64, &str) = (1, 2.5, "tres");
    let (x, y, z) = tupla;
    
    // Arrays y slices
    let array: [i32; 5] = [1, 2, 3, 4, 5];
    let slice = &array[1..4];
    
    // Vectores
    let mut vector: Vec<i32> = vec![1, 2, 3];
    vector.push(4);
    
    // Cadenas
    let mut cadena = String::from("Hola");
    cadena.push_str(", mundo!");
    
    // Control de flujo
    if entero > 40 {
        println!("Mayor que 40");
    } else if entero < 30 {
        println!("Menor que 30");
    } else {
        println!("Entre 30 y 40");
    }
    
    // Match (similar a switch)
    match entero {
        0 => println!("Es cero"),
        1..=10 => println!("Entre 1 y 10"),
        42 => println!("Es la respuesta"),
        _ => println!("Otro número"),
    }
    
    // Bucles
    for i in 0..10 {
        if i == 5 {
            continue;
        }
        if i == 8 {
            break;
        }
    }
    
    let mut i = 0;
    while i < 5 {
        i += 1;
    }
    
    loop {
        if contador > 10 {
            break;
        }
        contador += 1;
    }
    
    // Closures
    let suma = |a: i32, b: i32| -> i32 {
        a + b
    };
    let resultado = suma(5, 3);
    
    let multiplicar = |a, b| a * b;
    
    // Referencias y préstamos
    let s1 = String::from("hola");
    let longitud = calcular_longitud(&s1);
    
    let mut s2 = String::from("mundo");
    modificar_string(&mut s2);
}

// Funciones
fn saludar(nombre: &str) -> String {
    format!("Hola, {}!", nombre)
}

fn calcular_longitud(s: &String) -> usize {
    s.len()
}

fn modificar_string(s: &mut String) {
    s.push_str(" modificado");
}

// Estructuras
struct Persona {
    nombre: String,
    edad: u32,
}

impl Persona {
    // Método constructor
    fn new(nombre: &str, edad: u32) -> Persona {
        Persona {
            nombre: String::from(nombre),
            edad,
        }
    }
    
    // Método de instancia
    fn presentarse(&self) {
        println!("Me llamo {} y tengo {} años.", self.nombre, self.edad);
    }
    
    // Método que toma propiedad
    fn cumplir_anios(&mut self) {
        self.edad += 1;
    }
}

// Enumeraciones
enum Resultado<T, E> {
    Ok(T),
    Err(E),
}

enum DiaSemana {
    Lunes,
    Martes,
    Miercoles,
    Jueves,
    Viernes,
    Sabado,
    Domingo,
}

// Traits (similares a interfaces)
trait Animal {
    fn nombre(&self) -> &str;
    
    fn hacer_sonido(&self) {
        println!("Algún sonido");
    }
}

struct Perro {
    nombre: String,
}

impl Animal for Perro {
    fn nombre(&self) -> &str {
        &self.nombre
    }
    
    fn hacer_sonido(&self) {
        println!("Guau guau!");
    }
}

// Genéricos
struct Punto<T> {
    x: T,
    y: T,
}

fn imprimir<T: std::fmt::Display>(valor: T) {
    println!("{}", valor);
}

// Manejo de errores
fn dividir(a: i32, b: i32) -> Result<i32, String> {
    if b == 0 {
        return Err(String::from("División por cero"));
    }
    Ok(a / b)
}

// Módulos
mod matematicas {
    pub fn sumar(a: i32, b: i32) -> i32 {
        a + b
    }
    
    fn privada() {
        println!("Esta función es privada");
    }
}

// Lifetime annotations
fn mayor<'a>(x: &'a str, y: &'a str) -> &'a str {
    if x.len() > y.len() {
        x
    } else {
        y
    }
}

// Macros
macro_rules! mi_vector {
    ( $( $x:expr ),* ) => {
        {
            let mut temp_vec = Vec::new();
            $(
                temp_vec.push($x);
            )*
            temp_vec
        }
    };
}

// Unsafe Rust
unsafe fn funcion_peligrosa() {
    // Código potencialmente peligroso
}

// Operadores y expresiones
fn operadores() {
    let a = 10;
    let b = 20;
    
    let suma = a + b;
    let resta = a - b;
    let multiplicacion = a * b;
    let division = a / b;
    let modulo = a % b;
    
    let es_igual = a == b;
    let es_diferente = a != b;
    let es_menor = a < b;
    
    let logico_and = true && false;
    let logico_or = true || false;
    let logico_not = !true;
    
    let bit_and = a & b;
    let bit_or = a | b;
    let bit_xor = a ^ b;
    let bit_not = !a;
    let bit_shift_left = a << 1;
    let bit_shift_right = a >> 1;
}
