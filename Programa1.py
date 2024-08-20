
def clasificar_cadena(cadena):
    if cadena.isdigit():
        return "Número entero"
    elif cadena.isalpha():
        return "Palabra"
    elif any(char.isdigit() for char in cadena) and any(char.isalpha() for char in cadena):
        return "Compuesta"
    else:
        return "Desconocida"

cadena_usuario = input("Ingrese una cadena de caracteres: ")
resultado = clasificar_cadena(cadena_usuario)
print(f"La cadena ingresada es: {resultado}")
