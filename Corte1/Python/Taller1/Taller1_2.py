# a. Imprima la lista
def imprimirLista(ls):
    for i in range(len(ls)):
        print(ls[i])

#b. Calcule e imprima el resultado de la suma de los elementos que ocupan posiciones impares.
def sumaPosImpares(ls):
    res = 0
    for i in range(0,len(ls)+1,2):
        res = res + ls[i]
    return res

#c. Calcule e imprima el número mayor de la lista e indique el número de veces que aparece ese número en la lista.
def mayorApariciones(ls):
    mayor = mayorLista(ls)
    cant = 0
    for i in range(len(ls)):
        if ls[i] == mayor:
            cant = cant + 1
    return cant

def mayorLista(ls):
    mayor = ls[0]
    for i in range(len(ls)-1):
        if mayor < ls[i+1]:
            mayor = ls[i+1]
    return mayor


if __name__ == '__main__':

    
    ls = []
    
    for i in range(1,6):

        while True:
            num = int(input("Ingrese el numero " + str(i) + ": "))
            if num > 0:
                break
        
        ls.append(num)

    #Imprimir la lista
    #imprimirLista(ls)
    print("\nLa lista es: ")
    print(ls)

    #Resultado de la suma de los elementos en posicion impar
    print("\nLa suma de los elementos en posicion impar es: ", sumaPosImpares(ls))

    #Mayor de la lista
    print("\nEl numero mayor de la lista es: ", mayorLista(ls))
    print("Y parece " + str(mayorApariciones(ls)) + " veces\n")
