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


