
cadena = input("Ingresa la cadena: ")

letras = 0
numeros = 0
espacios = 0
signos = 0

# hfjkdslaksjdhfg698uy543829(/&%$#$%&/)

for i in cadena:
    if i.isalpha():
        letras += 1
    elif i.isnumeric():
        numeros += 1
    elif i.isspace():
        espacios += 1
    else:
        signos += 1

print(f"Letras: {letras} Números: {numeros} Espacios: {espacios} Signos: {signos}")
    