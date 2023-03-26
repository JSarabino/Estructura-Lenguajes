
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
    ```JavaScript
    const myHonda = {
        color: "red",
        wheels: 4,
        engine: { cylinders: 4, size: 2.2 }
    };

    console.log(myHonda.engine.cylinders);
    console.log(myHonda["engine"]["cylinders"]);
    //Resultado
    4
    ```

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
Operadores logicos
```JavaScript
a == b // comparacion comun
a === b // comparacion estricta
a > b
a >= b
a < b
a <= b
a && b
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


## Estructuras Repetitivas Javascript

Las estructuras repetitivas Javascript son aquellas que nos permiten realizar una misma acción un número determinado de veces. El número de veces puede ser un contador o la evaluación de una condición.

Existen varias estructuras repetitivas en Javascript:

* for
* while
* do..while
* for..in
* for..of

Y algunas sentencias que nos ayudan dentro de las estructuras repetitivas:

* break
* continue
* etiquetas

Veamos cada una de estas estructuras repetitivas Javascript en detalle.
## For
```JavaScript
for (asignacion_inicial;condición;incremento) {
  // Bloque de sentencias
 }
 ```
Si, por ejemplo, queremos ejecutar un bloque de sentencias 10 veces, podremos utilizar el siguiente código.
```JavaScript
for (let x=1;x<=10;x++) {
  console.log(x);
}
```
## While
```JavaScript
while (condición) {
  // Bloque de sentencias
}
```
Así, si queremos ejecutar el bucle 10 veces mediante una estructura repetitiva while tendremos el siguiente código:
```JavaScript
let x = 1;
while (x<=10) {
  console.log(x);
  x++;
}
```
## Do..While
```JavaScript
do {
  // Bloque de sentencias
} while (condición);
```
Si queremos ejecutar la estructura repetitiva do-while 10 veces, tendremos el siguiente código:
```JavaScript
let x = 1;
do {
  console.log(x);
  x++;
} while (x<=10);
```
Los bucles infinitos son aquellos cuya condición no se cumple nunca. Es por ello que el código se ejecuta infinitamente sin finalizar el programa. Es por ello que siempre deberemos de asegurarnos que dentro del bloque de sentencias hay una sentencia que pueda alterar la condición y evitar así los dañinos bucles infinitos.
### Sentencia break
La ejecución de la sentencia break lo que hace es que automáticamente se salga del bucle y pase a ejecutarse la siguiente sentencia.
```JavaScript
let x = 1;
while (x<=10) {
  if (x==5) {
    break;
  }
  console.log(x);
  x++;
}
```
Etiquetas
El sistema de etiquetas Javascript nos permite agrupar un conjunto de sentencias dentro de un programa para poder saltar a ellas cuando queramos.

Para poder etiquetar las sentencias deberemos de utilizar la estructura:
```JavaScript
etiqueta:
  sentencias;
Por ejemplo podríamos etiquetar un bucle de la siguiente forma:

MiBucle:
  let x = 1;
  while (x<=10) {
    console.log(x);
    x++;
  }
```
Como hemos visto antes la etiqueta se compagina con la sentencia break. De esta manera podemos tener el siguiente código:
```JavaScript
let x = 1;
let y = 1;

inicio:
 while (x<10) {
  console.log(x);
  while (y<10) {
    console.log (x + ',' + y);
    y++;
    if (y==5) {
      break inicio;
    }
  }
  x++;
  y = 0;
}
```
Esto se utiliza sobre todo si tenemos bucles anidados. Ya que al poner el break con la etiqueta del primer bucle lo que hace es salirse de los dos bucles, mientras que si hubiésemos utilizado solo un break habría salido únicamente del primer bucle.

Por consola veremos lo siguiente:
```JavaScript
1
1,1
1,2
1,3
1,4
```
### Sentencia Continue
Otra sentencia parecida a break que podemos ejecutar es continue. La estructura de la sentencia continue es la siguiente:
```JavaScript
continue [etiqueta];
```
Tal y como ocurría con el break, la sentencia continue puede utilizarse con y sin etiqueta. Cuando utilizamos la sentencia continue lo que estamos haciendo es acabar el bucle en el que estamos, pero no salta a la siguiente sentencia fuera del bucle, si no que salta a la siguiente iteración.
```JavaScript
let x = 0;
while (x<10) {
  x++;
  if (x%2==0) {
    continue;
  }
  console.log(x);
}
```

Utilizamos el mismo código que con las etiquetas break, pero en este caso con una sentencia continue. Así lo que sucederá es que se saldrá desde el bucle interno hasta el externo, pero en vez de a la sentencia siguiente, realizará una nueva iteración.
```JavaScript
let x = 1;
let y = 1;

inicio:
 while (x<10) {
  console.log(x);
  while (y<10) {
    console.log (x + ',' + y);
    y++;
    if (y==5) {
      continue inicio;
    }
  }
  x++;
  y = 0;
}
En este caso, por consola veremos lo siguiente:

1
1,1
1,2
1,3
1,4
1
1,5
1,6
1,7 …
```