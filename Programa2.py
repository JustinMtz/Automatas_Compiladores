    
cantidad_de_palabras = 0
cantidad_de_Enteros = 0
cantidad_de_compuestas = 0

cadena = input("Ingresa la cadena: ")
palabras = cadena.split()

for palabra in palabras:
    if palabra.isdigit():
        cantidad_de_Enteros += 1
    elif palabra.isalpha():
        cantidad_de_palabras += 1
    elif any(char.isdigit() for char in palabra) and any(char.isalpha() for char in palabra):
        cantidad_de_compuestas += 1
    
print(f"La cadena ingresada es de {len(palabras)} palabra: \nEnteros: {cantidad_de_Enteros}\nAlfanumerica: {cantidad_de_palabras}\nCompuesta: {cantidad_de_compuestas}")