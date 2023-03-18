import random

#Funcion llenar M
def llenarM(M):
    
    while True:
        #Manejo de ceros y unos
        contCeros = 0
        contUnos = 0
        #Se llena la matriz y los contadores
        for i in range(0,3):
            for j in range(0,3):
                M[i][j] = random.randrange(0,2)
                #Contar unos y ceros
                if (M[i][j] == 1):
                    contUnos = contUnos + 1
                else:
                    contCeros = contCeros + 1
        #Si la cantidad minima de 1s y 0s no se cumple se repite el llenado
        if (contUnos >= 3) and (contCeros >= 4):
            return M
    
#Imprimir M
def pintarM(M):
    for i in range(0,3):
        print(M[i])

def pintarMPintar(MPintar):
    print("---------------TABLERO---------------")
    for i in range(0,3):
        print(MPintar[i])

#Main
if __name__ == '__main__':

    #Definimos las matrices
    M = [[0,0,0],[0,0,0],[0,0,0]]
    MPintar = [['*','*','*'],['*','*','*'],['*','*','*']]
    
    #Llenar matriz con las condiciones
    M = llenarM(M)
    #Pintar matriz M(sistema)
    pintarM(M)
    #Pintar matriz MPintar(usuario)
    pintarMPintar(MPintar)

    rondasJugadas = 0
    rondaGanada = 0
    aciertos = 0

    for i in range(0,3):

        #Aciertos
        while True:

            #Pedir filas y columnas entre los valores permitidos
            while True:
                    
                fila = int(input("Digite el numero de la fila (opcion 0,1,2): "))
                if (fila >= 0) and (fila <= 2):
                    break
            
            while True:
                columna = int(input("Digite el numero de la columna (opcion 0,1,2): "))
                if (columna >= 0) and (columna <= 2):
                    break
                
            #Logica
            if M[fila][columna] == 1:
                MPintar[fila][columna] = 1
                pintarMPintar(MPintar)
                aciertos = aciertos + 1
            else:
                rondasJugadas = rondasJugadas + 1
                print("Ronda perdida\n")
                print("\n--NUEVA RONDA--")
                M = llenarM(M)
                pintarM(M)
                MPintar = [['*','*','*'],['*','*','*'],['*','*','*']]
                pintarMPintar(MPintar)
                aciertos = 0
                break
                
            print("Aciertos: ", aciertos)
            
            #Condicion de salida
            if aciertos == 3:
                aciertos = 0
                rondasJugadas = rondasJugadas + 1
                rondaGanada = rondaGanada + 1

                if rondasJugadas == 3:
                    print("\nFIN  DEL JUEGO")
                else:
                    print("\n--NUEVA RONDA--")
                    M = llenarM(M)
                    pintarM(M)
                    MPintar = [['*','*','*'],['*','*','*'],['*','*','*']]
                    pintarMPintar(MPintar)
                break
        
        print("\nRondas jugadas: ", rondasJugadas)
        print("Rondas ganadas: ",rondaGanada, "\n")
        


    #print("Rondas ganadas: ",rondaGanada)
    #print("Rondas jugadas: ", rondasJugadas)
    
    if rondaGanada < 2:
        print("Juego perdido\n")
    else:
        print("Juego ganado\n")