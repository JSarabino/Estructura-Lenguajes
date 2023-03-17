class Perro:
    #Atributos
    nombre = ""
    raza = ""
    edad = 0

    #Constructor
    def __init__(self, nombre, raza, edad):
        self.nombre = nombre
        self.raza = raza
        self.edad = edad

lsPerros = []
cantPerros = int(input("Ingrese la cantidad de perros: "))

def imprimirLista():
    for i in range(0,cantPerros,1):
        print("Nombre del perro " + str(i+1) + ": " + lsPerros[i].nombre)
        print("Raza del perro: " + str(i+1) + ": " + lsPerros[i].raza)
        print("Edad del perro " + str(i+1) + ": " + str(lsPerros[i].edad))

for i in range(0,cantPerros,1):
    nombre = input("Ingrese el nombre del perro: " + str(i+1) + ": ")
    raza = input("Ingrese la raza del perro: " + str(i+1) + ": ")
    edad = int(input("Ingrese la edad del perro: " + str(i+1) + ": "))

    objPerro = Perro(nombre,raza,edad)
    lsPerros.append(objPerro)

print("\nLista de perros")
imprimirLista()





