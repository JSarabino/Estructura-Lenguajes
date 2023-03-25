
### Caracteristicas de JavaScript:

- Case sensitive:
        Se dice que un lenguaje de programacion es “case sensitive” cuando es capaz de distinguir entre letras mayúsculas y minúsculas.

- Lenguaje de tipado dinamico: 
        no necesitamos declarar y establecer un tipo como número o cadena de caracteres 
        específico e inflexible para las variables.
    
- Lenguaje de programación interpretado: 
        no es necesario compilar los programas para ejecutarlos.
    
- JavaScript es un lenguaje de programación que nos permite definir la lógica y el comportamiento de nuestro sitio web

- Es recomendable estar familiarizado con HTML y CSS:
        HTML permite darle estructura a nuestras páginas y CSS, aportar estilo a dicha estructura.
        Son lenguajes de marcado que nos ayudan a crear y definir esos elementos


### Tipos de datos:
- undefined : valor por defecto cuando no se asigna un valor
- null : nulo
- boolean : true/false
- strin : cadena de caracteres: "" o ''
    ```
    var cadena = "Cadena de caracteres con \"Comillas\" "
    cadena = 'Cadena de caracteres con "Comillas" '
    ```
    Existen diferentes secuencias de escape
    ```Pythont
    \'  Comilla simple  
    \"  Comilla doble
    \\  Barra invertida
    \n  Linea nueva
    \r  Retorno de carro
    \t  Tabulacion
    \b  Retroceso
    \f  Salto de pagina
    ```
    Concatenar
    ```JavaScript
    var mensajeCompleto = "Aprendiendo " + "a programar"
    var parteFinal = " en JavaScript"
    mensajeCompleto += parteFinal
    ```
    Algunos errores
    ```JavaScript
    var mensaje = "Jola mundo"
    mensaje[0] = "H" //Error, no se puede cambiar de esta forma
    ```
    Algunon metodos
    ```JavaScript
    mensaje.length //Retorna la cantidad caracteres de la cadena  
    ```
- symbol: dato primitivose utilizan principalmente para crear propiedades  de objetos privadas o para crear una forma de nombrar eventos de forma única.
    ```JavaScript
    const mySymbol = Symbol()
    const mySymbolWithDescription = Symbol('descripción del símbolo')

    // los símbolos son únicos
    Symbol() === Symbol() // false
    // incluso con la misma descripción
    Symbol('a') === Symbol('a') // false 
    ```
- numer: tipo de dato numerico
- object

### Tipos de variables:
- var
- let
- const

### Operadores aritmeticos:
- suma: +
- resta: -
- multiplicacion: *
- division: /
- modulo: %

### Aumentar o disminuir numeros:
```JavaScript
var a  = 23;
a++;
a--;
a +=
a -=
a *=
a /=
```
### Arreglos
```JavaScript
var miArreglo = [["Juan",16], ["Maria",23],[3]]
console.log(miArreglo)
//Resultado
(3) [Array(3), Array(2), Array(1)]
0: (3) ['Juan', 16, 3]
1: (2) ['Maria', 23]
2: [3]
length: 3
[[Prototype]]: Array(0)

//Accediendo y cambiando valores
miArreglo[2] = [3,2,3] 
miArreglo[2][0] = [33,44]
miArreglo[2][0][0] = [99,99]
console.log(miArreglo)
//Resultado
(3) [Array(3), Array(2), Array(3)]
0: (3) ['Juan', 16, 3]
1: (2) ['Maria', 23]
2: Array(3)
    0: Array(2)
        0: (2) [99, 99]
        1: 44
        length: 2
        [[Prototype]]: Array(0)
    1: 2
    2: 3
    length: 3
    [[Prototype]]: Array(0)
length: 3
```
Algunos metodos
```JavaScript
miArreglo.push()    //Agregar elemento al final
miArreglo.pop()     //Remover el ultimo elemento
miArreglo.shift()   //Remover el primer elemento
miArreglo.unshift() //Agregar al inicio del arreglo
```
### Funciones
```JavaScript
function mostrarMensaje(){

}
```