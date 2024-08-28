
try:
    cantidad_de_caracteres_con_espacio = 0
    cantidad_de_caracteres_sin_espacio = 0
    cantidad_de_palabras = 0
    cantidad_de_Enteros = 0
    cantidad_de_compuestas = 0
    archivo_txt = "C:\\Users\\super\\Documents\\VISUAL STUDIO\\Python\\Aprendiendo\\EjerciciosPracticos1\\cadena.txt"

    
    with open(archivo_txt, 'r', encoding='utf-8') as archivo:
        contenido = archivo.read()
        cantidad_de_caracteres_con_espacio = len(contenido)
        cantidad_de_caracteres_sin_espacio = len(contenido.replace(" ",""))
        palabras = contenido.split(" ")

        for palabra in palabras:
            if palabra.isdigit():
                cantidad_de_Enteros += 1
            elif palabra.isalpha():
                cantidad_de_palabras += 1
            elif any(char.isdigit() for char in palabra) and any(char.isalpha() for char in palabra):
                cantidad_de_compuestas += 1

    
    print(f"La cadena ingresada tiene {len(palabras)} palabras: \n"
          f"Total de caracteres (con espacios): {cantidad_de_caracteres_con_espacio}\n"
          f"Total de caracteres (sin espacios): {cantidad_de_caracteres_sin_espacio}\n"
          f"Enteros: {cantidad_de_Enteros}\n"
          f"Palabras: {cantidad_de_palabras}\n"
          f"Compuestas: {cantidad_de_compuestas}")
          
except FileNotFoundError:
    print(f"El archivo {archivo_txt} no fue encontrado.")
except Exception as e:
    print(f"Ocurrió un error: {e}")
    
    