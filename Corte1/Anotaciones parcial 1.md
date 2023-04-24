# Anotaciones para el primer parcial

##  ¿Qué entendemos por lenguaje de Programación?

Un lenguaje de programación es un ***sistema notacional*** para describir computaciones en una forma ***legible*** tanto para la máquina como para el ser humano.

### Computacional
Cualquier tipo de procesamiento realizado por una computadora tal como la ,manipulación, almacenamiento, recuperación, etc de datos.

## Abstracciones en los lenguajes de programacion
### Abstracciones de datos
- Resumen las propiedades de los datos
    - Abstracciones basicas: tales como las variables y sus tipos.
    - Abstracciones estructuradas: arreglos.
    - Abstracciones unitarias: clases, paquetes, bibliotecas (datos reunido   relacionados entre si, encapsulados y ocultados)

### Abstracciones de control
- Resumen propiedades de la transferencia de control, es decir, la
    modificación de la trayectoria de ejecución de un programa con base en
    una situación determinada.
    - Abstracciones basicas: instrucciones de máquina en una sentencia abstracta más comprensible. Como la asignacion:
      ```
      x = x + 3
      ```
    - Abstracciones estructuradas: Estructuras de selección, condicionales, repetitivas
    - Abstracciones unitarias: Tienen la finalidad de incluir una colección de procedimientos que proporcionan servicios relacionados lógicamente con otras partes del programa

## Paradigma de computacion
“Enfoque o visión particular” que se adopta para el desarrollo de
software. Los paradigmas llevan consigo un estilo de programación y a su vez
establece una forma diferente de pensar para la resolución de un
problema.

### Paradigma Imperativo:
Consiste en una serie de comandos que se ejecutan de manera secuencial y
por pasos, en donde el orden de ejecución es crucial.

* C, Pascal, Basic

Los lenguajes de programación imperativa pueden a su vez clasificarse en
tres estilos distintos de programación : el estructurado, el procedimental y el
modular.

- Estructurado: amplía el principio imperativo central con las estructuras concretas de control: secuencias, selección e iteración.
- Procedimental: divide las tareas de las que se debe ocupar un programa en tareas parciales más pequeñas que se describen en el código por separado.
- Modular: cada uno de los componentes de programa se diseñan, desarrollan y prueban con total independencia los unos de los otros.

### Paradigma orientado a objetos
gira principalmente en abstracciones del mundo real.

* Java, C++, C#, Delphi, Smalltalk, entre otros.

### Paradigma Funcional
Tiene como mecanismo básico la evaluación de funciones. Todo el programa
se ve como un conjunto de funciones.

* LISP, Scheme, ML

### Paradigma Lógico
Un programa esta formado por un conjunto de enunciados. Cálculo de
predicados (elemento de una oración) Se busca obtener una deducción
lógica.

* Prolog

## Sintaxis / Semántica
### Sintaxis
“La ortografía” del lenguaje.
- TOKENS: Palabras reservadas de un lenguaje (if, else, etc)
símbolos para operaciones (+, >=, ==) y símbolos especiales de
puntuación (; .)

### Semántica
Significado (interpretación) de los enunciados del lenguaje

___
## PROGRAMACIÓN IMPERATIVA
El enfoque imperativo permite al desarrollador escribir código que describe detalladamente cada uno de los pasos que deben realizarse para cumplir el objetivo.

### Programación No Estructurada
Un programa principal con instrucciones que “generalmente” tiene comandos que están ordenados
secuencialmente y que modifican datos globales pero que incluyen saltos incondicionales GOTO
(El propósito de esta instrucción es transferir el control a un punto determinado del código, donde debe
continuar la ejecución)

### Programación Procedural
* Introduce el concepto de procedimientos y subrutinas.
* Un programa con este enfoque puede ser visto como una secuencia de llamadas a procedimientos.
* Los procedimientos reciben y devuelven valores.
* Facilita la reutilización de código.
* El programa principal es responsable de pasar los datos a los procedimientos, el cual procesa los
datos y los devuelve al programa que lo llamó.
* ***Se permite todavía saltos incondicionales***

### Programación Modular
* “Dividir” el programa en módulos que pueden compilarse separadamente y en el que se puede
requerir tener conexión con otros módulos para poder funcionar. Trabaja bajo el lema “divide y
vencerás” → ayuda a solucionar problemas de programación grandes y complejos.
* Permite ocultar información, programas + manejables y legibles (trabajo en equipo)

### Programación Orientada a Objetos
Donde se definen qué objetos del mundo real se necesitan y se abstraerán (clases) para ser sistematizados.

## CARACTERÍSTICAS PRINCIPALES
### COERCIÓN
la coerción se ve como la conversión automática o implícita de valores de un tipo de
dato a otro.

### CASTING
Forzar la coerción de tipo, conversión explícita.

### DATOS
Representación simbólica que toma un atributo.

- DECLARACIÓN: A través de ella se introduce un ítem de datos al programa.
- ASIGNACIÓN: Es el proceso de asociar un valor con un ítem de datos.
- INICIALIZACIÓN: Asignar un valor inicial a un ítem de datos. Algunos lenguajes permiten asignación múltiple.
- ÁMBITO: determina el tiempo de vida del dato
    - Dato Global: Tiempo de vida = programa visibilidad = Cualquier parte del programa.
    - Dato Local: Tiempo de vida y visibilidad: dependen del contexto de la declaración.
- Variables: su valor cambia durante la ejecución del programa.
- Constantes: solo se inicializa y su valor no se puede cambiar.
### TIPOS DE DATOS
- Predefinidos: son parte del lenguaje. Para ello revisar los soportados y sugeridos por el lenguaje.
- Definidos por el programador: útiles cuando es necesario crear un tipo de datos “a la medida”. Por ejemplo: días de la semana, meses del año, etc.
- Escalares:constante o variable que contiene un dato atómico y unidimensional. Pueden ser expresados como valores únicos (entero, real, carácter, lógico)
- Estructurados o Compuestos: Contienen escalares y otros datos compuestos. Aquel que se define mediante composición de tipos de datos (vector, cadena de caracteres, matriz, registro).
- Discretos (Ordinales): se dice que es ordinal porque el conjunto de valores que representa se puede contar (integer, boolean, char).
- Numéricos: Rango y precisión generalmente son valores predefinidos para el
lenguaje.

### PUNTEROS
Son variables que tienen como valor una dirección, que generalmente referencia la posición de memoria de otro ítem de datos.

### EXPRESIONES
Están compuestas de uno o más operandos cuyos valores se combinan con operadores.

### OPERADORES
* Aridad: número de operandos que requiere el operador para trabajar (unarios, binarios, ternarios)
* Se clasifican en: prefijos, posfijos, infijos
* Precedencia: Jerarquía que permite determinar que operador se aplica primero.
* Evaluación Perezosa: se evalúa solo lo necesario. Cuando el primer término de una expresión booleanafalla no se requiere evaluar el resto de términos. (and)

### SEPARADORES DE SENTENCIAS
Normalmente el lenguaje define un separador de sentencias. En lenguaje C está el ;

### Recordando punteros en C:
Al igual que cualquier variable, los punteros deben ser declarados antes de utilizarse. La declaración de un puntero debe indicar el tipo de dato al que punta y un asterisco (*) antes del nombre.
```C
<tipo> * <identificador>
Ejemplos: int *ptr1;
          float *ptr2;
```
¿Qué se imprime en cada uno de los printf?
```C
int main (int argc, char *argv[]) {
	int x, *p;
	x = 1;
	p = &x;
	
	printf("%d\n",x); //Valor de x: 1
	printf("%d\n",&x);//Valor de la direccion de x: 7470876
	printf("%d\n",p); //Valor del puntero p(la direccion de x): 7470876
	printf("%d\n",*p);//Valor de lo que apunta p: 1
	printf("%d\n",&p);//Valor de la direccion del puntero: 7470872
	
	return 0;
}
```

Ejercicio:
```C
int main (int argc, char *argv[]) {
	
	int y,j,t,*np,*mp;
	double *pt;
	
	y = 12;
	j = 20;
	np = &j;
	*np = 35;
	y = *np - 15;
	mp = np;
	t = *np + *mp;
	//pt = &t; Da error ya que pt(float) != t(int)

	//Que valores imprime?
	printf("%d\n",y);
	printf("%d\n",j);
	printf("%d\n",t);
	printf("%p\n",&np);
	printf("%d\n",*mp);
	printf("%p\n",np);
	printf("%p\n",&j);
	printf("%d\n",*np);
	printf("%p\n",mp);
	//printf("%d\n",*pt);

	return 0;
}
````
### Recordando Estructuras:

* Defina una estructura que le permita representar un carro. y la cual tendrá placa, marca y modelo.
* Finalmente imprima dichos valores.

```C
#include<iostream>

struct carro{
	char placa[30];
	char marca[30];
	int modelo;
}
carro1={"XML231","Mazda",2016},
carro2={"FJH692","Toyota",2022};

int main (int argc, char *argv[]) {
	
	printf("El modelo del carro es: %d \n",carro1.modelo);
	printf("La marca del carro es: %s \n",carro1.marca);
	printf("La placa del carro es: %s \n",carro1.placa);
	
	printf("El modelo del carro es: %d \n",carro2.modelo);
	printf("La marca del carro es: %s \n",carro2.marca);
	printf("La placa del carro es: %s \n",carro2.placa);
	
	return 0;
}
```
___

## LENGUAJES DE SCRIPTING
lenguaje de script es un lenguaje de programación que admite scripts también conocido como archivo de órdenes, que no es más que una serie de comandos que un software, una aplicación o un motor de scripting interpreta. Generalmente suelen almacenarse en un archivo plano.

* Los del lado del servidor: Los programadores utilizan lenguajes como Perl, Ruby, PHP y Python para crear scripts que se ejecutan en un servidor y que proporcionan funcionalidad a una página web o aplicación.

* Los del lado del cliente: Los programadores utilizan lenguajes como por ejemplo JavaScript, para escribir scripts que se ejecutan en el lado del cliente, que sería el navegador web y que es usado para hacer sitios web y aplicaciones altamente funcionales.

### Conceptos generales

* Tipado dinámico: La característica de tipado dinámico se refiere a que no es necesario declarar el tipo de dato que va a contener una determinada variable sino que su tipo se determinará en tiempo de ejecución según el tipo del valor al que se asigne, y el tipo de esta variable puede cambiar si se le asigna un valor de otro tipo.

___
# Programacion en Python
## Características
* Python es un lenguaje de programación multiparadigma (POO, programación
estructurada, programación funcional).
* Lenguaje de alto nivel.
* Es un lenguaje Interpretado o de script.
* Tipado dinámico.
* Fuertemente tipado.
* Independiente de la plataforma: El intérprete de Python está disponible en
multitud de plataformas (UNIX, Solaris, Linux, DOS, Windows, OS/2, Mac OS,
etc.) por lo que si no utilizamos librerías específicas de cada plataforma
nuestro programa podrá correr en todos estos sistemas sin grandes cambios.
* Lenguaje bastante sencillo a la hora de crear programas. Un programa escrito
en Python podría tener menos líneas de código que su equivalente en Java o
C.
* Python es Case Sensitive (distingue entre mayúsculas y minúsculas).
* Python dispone de un intérprete por línea de comandos en el que se pueden
escribir instrucciones, una por una, en una especie de shell; el resultado puede
verse y probarse de inmediato.
* Existen otros programas, tales como IDLE, que añaden funcionalidades extra al
modo convencional, como el auto-completar código y el coloreado de la sintaxis
del lenguaje.

Una característica especial de Python y que aprovecha el hecho de no contar con
tipos de datos (typeless), es que se pueden definir varias variables de una sola vez.

Los nombres de las variables pueden tener una longitud arbitraria, pueden incluir
letras y números, pero ***deben*** comenzar con una letra.

## Operadores Lógicos
Si no recuerda el tipo de dato básico que tiene un valor determinado, puede
preguntarlo con type(dato).
### OPERACIONES CON LISTAS
El operador “+” concatena listas:
```Python
>>> a = [2, 4, 6]
>>> b = [8, 10]
>>> c = a + b
>>> print (c)
[2,4,6,8,10]
```
De forma similar, el operador “*” repite una lista un número dado de veces:
```Python
>>> a = [2,4,6]
>>> a *3
[2, 4, 6, 2, 4, 6, 2, 4, 6]
```
El operador [n:m] devuelve la parte que relaciona el enésimo término hasta el
emésimo término", incluyendo el primero, pero excluyendo el último (Aplica para
cadenas).
```Python
>>> vocales = ["a","e","i","o","u"]
>>> vocales[1:3]
['e', 'i']
```
### ALIASING
Cuando crea dos listas, obtiene dos objetos:
```Python
>>> a = [1,2,3]
>>> b = [1,2,3]
>>> id(a)
32029272
>>> id(b)
29521720
```
a y b tienen el mismo valor, pero no se refieren al mismo objeto.

En este ejemplo se puede decir que las dos listas son equivalentes porque tienen
los mismos elementos, pero no son idénticas porque no son el mismo objeto.

Si dos objetos son idénticos ellos también son equivalentes, pero si ellos son
equivalentes no necesariamente son idénticos.
```Python
>>> a = [1, 2, 3]
>>> b = a
>>> b is a
True
```
### MÉTODOS QUE SE PUEDEN UTILIZAR SOBRE LISTAS:
- append(elemento): Adiciona un elemento al final de la lista.

- extend(lista): Adiciona al final los elementos de la lista dada o de un elemento
que permita iterar.

    ```Python
    >>>lista.extend("ocho")
    >>> print (lista)
    [1, 2, 3, 'cinco', 'seis', 'siete', 'o', 'c', 'h', 'o']

    >>> lista.extend(8)
    Traceback (most recent call last):
    File "<pyshell#26>", line 1, in <module>
    lista.extend(8)
    TypeError: 'int' object is not iterable
    ```
- insert(i,x): Inserta un ítem en la lista en la posición i dada.

- remove(x): remueve el primer elemento “x” que aparezca. Si el elemento no
existe, ocurrirá un error.

- pop([i]): remueve un ítem en la posición dada de la lista, y lo retorna. Si no se
especifica un índice (lista.pop()) quita y retorna el último ítem de la lista. Los
corchetes representan que el índice es opcional no que se deba poner el índice
entre corchete.

- index(x): retorna el índice en la lista del primer ítem cuyo valor es “x”. Se
genera un error si no existe el ítem.

- count(x): retorna el número de veces que aparece x en la lista.

- sort (): organiza los ítems de la lista.

- reverse(): invierte los elementos de la lista.

### Tuplas
Similares a las listas, para definirla se utilizan paréntesis en lugar de corchetes.
Por ejemplo: t = (1, 2, “sistemas”). El constructor de la tupla es la coma y no el
paréntesis, pero el intérprete muestra los paréntesis, y nosotros deberíamos
utilizarlos, por claridad.

Pregunta: ¿Cuál es la diferencia de una lista y una tupla?

Las tuplas no poseen mecanismos de modificación a través de funciones (como:
reverse, sort, etc) como sí las poseen las listas. Además las tuplas son
inmutables, es decir, sus valores no se pueden modificar una vez creada y tienen
un tamaño fijo.

### Diccionarios
También son llamados matrices asociativas, estas colecciones relacionan una
clave y un valor. Por ejemplo, veamos un diccionario de país y moneda.
```Python
>>> d = {"colombia": "peso", "venezuela":"bolivar", "brasil": "real"}
>>> d
{'colombia': 'peso', 'venezuela': 'bolivar', 'brasil': 'real'}
```
El primer valor es la clave y el segundo es el valor asociado a la clave. Como
clave podemos utilizar cualquier valor inmutable: podríamos usar números,
cadenas, booleanos, tuplas pero no listas o diccionarios, dado que son mutables.
Los diccionarios no tienen índice, por lo tanto se acceden por su clave utilizando
el operador [ ].
```Python
>>> d["brasil"]
'real'
```
### Excepciones
El bloque try (intentar) define el fragmento de código en el que creemos que
podría producirse una excepción. El bloque except (excepción) permite indicar
el tratamiento que se llevará a cabo de producirse dicha excepción.
```Python
>>>def division(a, b):
try:
print (a / b)

except:

print('ocurrió una división por cero')

>>> def calcular():
        division(5,0)
>>>calcular()

ocurrió una división por cero
```

### Clases
La definición es:
```Python
class NombreClase:
    <espacio para atributos>
    <sentencia-1>
    ...
    <sentencia-N>
```
Instancias
```Python
obj = NombreClase()
```
A veces puede resultar útil tener un tipo de dato similar al struct de C. Para
realizar esto, se puede usar una definición de clase vacía.
```Python
class Empleado:
    pass

>>> emp = Empleado()
>>> emp.nombre = 'Juan Pérez'
>>> emp.departamento = 'sistemas'
>>> emp.sueldo = 1000
>>> print(emp.nombre, emp.departamento, emp.sueldo)

Juan Pérez sistemas 1000
```

## Exposiciones
### F#:
Es un lenguaje de programación universal para escribir código conciso, sólido y eficaz.
* Fuertemente tipado
* Multiparadigma
* De codigo abierto
* Multiplataforma

Capacidad de una función para ser tratada como si fuera un
valor más en la programación. En otras palabras, la función no
solo puede ser ejecutada en un momento determinado, sino
que también puede ser utilizada como un tipo de dato que se
puede manipular y pasar como parámetro a otras funciones.

### Go:
Es un lenguaje de programación de código abierto, polivalente,
multiplataforma, compilado y rápido.

* Lenguaje concurrente.
* Simplicidad.
* Soporta miles de conexiones.
* Lenguaje compilado.
* Multiplataforma.
* Orientado a objetos.
* Recolector de basura.
* Código abierto (open source).
* Tipado estático.
* Tipado dinámico.
* No existen las excepciones.

### JavaScript:
* Case sensitive
* Lenguaje Interpretado
* Cliente–Servidor
* Orientado a Objetos
* Tipado Dinámico
* Funciones de Primera Clase
* Soporte para Bibliotecas y
Frameworks


### PHP:

* Lo hace muy útil para procesar grandes cantidades de datos.
* Permite programación orientada a objetos.
* Módulos externos para mejorar la
aplicación web.
* Se puede separar la estructura.
* Integración con HTML.
* Multiplataforma.
* Debilmente tipado.

### Ruby:
Es un lenguaje de programación interpretado, reflexivo y orientado a
objetos.

- Orientado a objetos.
- Cuatro niveles de ámbitos de variables: Global, clase, instancia, local.
- Altamente portable.
- Carga dinámica de DLL/bibliotecas compartidas en la mayoría de
plataformas.
- Amplia librería estándar.
- Tipado dinámico.
- Manejo de excepciones.
- Todo en Ruby es un objeto.
- Es dinámicamente tipado.
- Uso de bloques y cierres.
- Se enfoca en la legibilidad, facilidad de uso y la flexibilidad.

### Scala:

- Scala es un lenguaje multiparadigma que soporta los paradigmas de P.O.O y programación
funcional.
- Interoperabilidad con Java, lo que le permite hacer uso de una basta cantidad de librerías de
java.
- Scala presenta una sintaxis concisa,elegante y expresiva que facilita la escritura de código y lo
hace fácil de leer.
- Scala es un lenguaje de programación de tipado estático y fuerte.
- Posibilidad de crear operadores personalizados.
- Tipos de datos algebraicos.
- inmutabilidad de los datos.
- Modelo de actores.
- Traits.

### Visual Basic:

* Visual Basic .NET (VB.NET) es un lenguaje de programación
multiparadigma (POO, programación estructurada,
programación orientada a eventos).

* Lenguaje de alto nivel: VB.NET es un lenguaje de
programación fácil de aprender y se considera una buena
opción para los principiantes en programación.
* Es un lenguaje de programación con tipos de datos estáticos.
Esto significa que cuando se define una variable en Visual
Basic .NET, se debe especificar el tipo de datos que se
almacenará en ella en el momento de la declaración. Una vez
que se define una variable con un tipo de datos específico, no
se puede cambiar su tipo de datos.

* Fuertemente tipado.

* Visual Basic .NET es Case Sensitive (distingue entre
mayúsculas y minúsculas).
* Interoperabilidad: VB.NET puede interoperar con otros
lenguajes de programación y tecnologías de Microsoft, como
C# y ASP.NET.

* Integración con .NET Framework: VB.NET se integra
completamente con el .NET Framework, lo que permite
acceder a su biblioteca de clases y otras características.
* Soporte para programación web: VB.NET se utiliza
ampliamente en el desarrollo de aplicaciones web utilizando
ASP.NET y proporciona características como la gestión de
estados, la autenticación y la autorización.
* Depuración y herramientas de desarrollo: Visual Studio es la
herramienta de desarrollo principal para VB.NET, que
proporciona características avanzadas de depuración, edición y
construcción de proyectos.

* Capacidad de acceso a bases de datos: VB.NET tiene acceso
a una amplia gama de bases de datos, lo que lo hace
adecuado para el desarrollo de aplicaciones de bases de datos.


