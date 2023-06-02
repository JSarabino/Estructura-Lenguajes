#  Diseño de las clases, atributos y métodos

## ¿ Qué es un Objeto?

Cualquier cosa o concepto que existe en la realidad (de forma física o
abstracta), que puede ser distinguible y al que le podemos distinguir
ciertos atributos y acciones.

* Forma Física → elementos reales que ocupan un espacio físico en la realidad.

* Forma Abstracta → elementos que son intangibles y que se definen conceptualmente.

Cada objeto del mundo real consta de:

* Características (atributos) que describen el estado de un objeto del mundo real.

* Operaciones o comportamientos (métodos) que describen las acciones que se asocian con el objeto del mundo real.

## ¿ En POO, cuál es la diferencia entonces entre un Objeto y una Clase?

Una diferencia importante entre objeto y clase es que el objeto es una entidad concreta que tiene un tiempo definido de existencia dentro del sistema mientras que la clase es solo una abstracción y ***nunca existe de forma concreta***.

### Definiciones formales/informática:

* Objeto: instancia específica de una Clase.

* Clase: es una especie de “molde o plantilla” que permite instanciar objetos. La clase es una “abstracción de la realidad”.

* Una clase encapsula datos miembro (atributos) y funciones
miembro (métodos). Por lo tanto, a los atributos y métodos se les llama los ***Miembros de la Clase***

* Los objetos se crean y eliminan durante la ejecución del programa.
* Una Clase puede tener muchas instancias y cada instancia es un objeto independiente.

## Características fundamentales de las Clases

### Niveles de acceso
- Para proteger ciertos miembros de la clase. Normalmente, se definirán como ocultos (privados) los atributos y visibles (públicos) los métodos.
- Protected (se usa cuando hay herencia)

Nota:
- Los métodos que se implementan dentro de la clase: se llaman ***funciones insertadas***.

## Constructores

### Constructores por defecto

* Constructor sin parámetros que “no hace nada”.
* Es invocado cada vez que se construye un objeto
* Cuando a una clase no se le especifica un constructor, java asume uno por defecto.

### Constructores parametrizados

* Cuando se crea un objeto es deseable inicializar diversos datos con valores específicos, por ejemplo enviados desde la interfaz.

Importante:
* Solo puede haber un ÚNICO constructor base pero pueden
haber N constructores parametrizados.

* Los constructores parametrizados deben diferir en algo unos
de otros ya sea en el número de parámetros o en los tipos de
datos definidos.

```Java
    public static void main(String[] args) {
        Estudiante est;
        est.setCodigo(10);
        est.setNombre("Matias");
        System.out.println(est.getCodigo());
        System.out.println(est.getNombre());
    }
```
¿Compila? ¿No compila?¿Qué se imprime? ¿Genera error?

Da error puesto que no se ha inicializado el objeto

### Creación de un Objeto
Para inicializar un objeto basta con llamar a su constructor después de la palabra reservada new y asignarlo a una referencia declarada previamente:

Declaración:
```Java
NombreClase nombreObjeto = new NombreConstructor();
```

## Herencia
Es una forma de
reutilización del software en la que se crean nuevas clases a
partir de clases ya existentes.

### Herencia simple 
En este caso cada clase tiene como máximo una sola
superclase.
### Herencia multiple
En este caso una clase tiene dos o más superclases.

## Sobrecarga de Métodos
Un Método que está sobrecargado se utiliza para reutilizar el nombre del método pero con diferentes parámetros.

* Dos o más métodos con el mismo nombre realizan acciones
diferentes.

* Es muy utilizados para la definición de constructores.

* Los métodos pueden estar sobrecargados en una misma clase.

* ***No hay sobrecarga*** si los métodos varían solo en el tipo de retorno.

## Polimorfismo
Por definición, polimorfismo es la capacidad de adoptar formas distintas. En el ámbito de la POO se entiende como la propiedad por la cual una misma función puede encontrarse en diferentes clases y realizando distintas acciones.

* La sobrecarga se da siempre dentro de una sola clase, mientras que el polimorfismo se da entre clases distintas.

## Clases Abstractas
Una clase abstracta normalmente ocupa una posición
adecuada en la jerarquía de clases que le permite actuar
como un depósito de métodos y atributos compartidos para
las subclases de nivel inmediatamente inferior. una clase abstracta es una clase de la que ***NO*** se puede crear objetos.
* Las clases derivadas de una clase base se conocen como clases
concretas ya que pueden instanciarse.
* Cuando una clase contiene un método abstracto tiene que
declararse abstracta. No obstante, no todos los métodos de una clase abstracta
tienen que ser abstractos.
* Las clases abstractas no pueden tener métodos privados (no
se podrían implementar).

Ejemplo:
```Java
public abstract class ClaseAbstracta
{
    . . .
    public abstract void metodoAbstracto();

}
public class OtraClase extends ClaseAbstracta
{
    . . .
    public void metodoAbstracto()
    {
        // código que implementa el método metodoAbstracto
    }
}
```

Produce error si intenta:
```Java
ClaseAbstracta ca = new ClaseAbstracta ();
```
Sin embargo si es posible escribir:
```Java
ClaseAbstracta ca = new OtraClase();
ca. metodoAbstracto();
```

## Herencia Múltiple
Java no admite herencia múltiple, lo que significa que las clases no pueden heredar más de una clase. Sin embargo, se pueden utilizar interfaces para ese propósito.

### Interface
es el modo de declarar un tipo formado sólo por métodos abstractos (públicos) y constantes, permitiendo que se escriba cualquier implementación para estos métodos.

* Una clase solamente puede derivar extends de una clase base, pero puede implementar varios interfaces.

* En una interface todo método es abstracto y público sin necesidad de
declararlo, por lo tanto no implementará ningún método que declara.

* Las variables actuarán como constantes. Así, la definición de los atributos deberán ser públicos, estáticos (static) y constantes (final). Si no lo coloca , así será definido por defecto.
* ***Una clase puede implementar más de un interfaz, pero sólo puede
extender de una clase.***

* Una interface puede heredar de más de una interface.

## Clases Genéricas
Genericidad: es una propiedad que permite definir una clase (o una función) sin especificar el tipo de datos de uno a más de sus miembros (parámetros). De esta forma se puede cambiar la clase para adaptarla a los diferentes usos sin tener que reescribirla.

```Java
public class Pares <T> {
    private T primero;
    private T segundo;

    //Guetters and Setters
}
```
El punto clave es la T. Se le indica al compilador que a la hora de usar la clase Pares, la clase que pongamos en lugar de la T situada entre los símbolos < y > se sustituirá por todas las T que aparezcan en el resto de la clase.

```Java
Pares <Integer> p_enteros = new Pares<Integer>();
Pares <String> p_cadenas = new Pares<String>();

p_enteros.setPrimero(5);
p_cadenas.setPrimero("Hola");
```