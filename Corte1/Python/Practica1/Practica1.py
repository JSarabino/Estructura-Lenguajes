#Para el control de numeros iguales
a = int(input("Digite el primer numero: "))

while True:
    b = int(input("Digite el segundo numero (diferente al primero): "))
    if b != a:
        break

while True:
    c = int(input("Digite el tercer numero (diferente a los anteriores): "))
    if c != b and c != a:
        break

print(a)
print(b)
print(c)

if a > b and a > c:
    if b > c:
        print("medio: ",b)
    else:
        print("medio: ",c)
elif b > a and b > c:
    if c > a:
        print("medio: ",c)
    else:
        print("medio: ",a)
elif c > a and c > b:
    if b > a:
        print("medio: ",b)
    else:
        print("medio: ",a)

# a < b and a < c
#     b < c
#     c < b

# b < a and b < c
#     c < a
#     a < c

# c < a and c < b
#     b < a
#     a < b

