# Definición del alfabeto
alfabeto = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

def cifrado_cesar(texto, desplazamiento):
    """
    Cifra un texto utilizando el método del cifrado César.

    Args:
        texto (str): El texto a cifrar. Debe estar en mayúsculas y solo incluir caracteres que estén en el alfabeto definido.
        desplazamiento (int): El número de posiciones que cada letra del texto será desplazada a lo largo del alfabeto.

    Returns:
        str: El texto cifrado si todos los caracteres son válidos.
        str: Un mensaje de error si algún caracter no es válido.

    Ejemplo:
        >>> cifrado_cesar("HOLA MUNDO", 3)
        'KROD PXQGR'
    """
    texto_cifrado = ""
    for letra in texto:
        if letra in alfabeto:
            # Calculamos el nuevo índice
            indice_nuevo = (alfabeto.index(letra) + desplazamiento) % len(alfabeto)
            # Añadimos la letra correspondiente al resultado
            texto_cifrado += alfabeto[indice_nuevo]
        elif letra in " ,.:":  # Si es un espacio, coma, punto o dos puntos, lo añadimos directamente
            texto_cifrado += letra
        else:  # Si no está en el alfabeto
            return "Todos los caracteres deben estar en mayúsculas y dentro del alfabeto."
    return texto_cifrado
    
def descifrado_cesar(texto_cifrado, desplazamiento):
    """
    Descifra un texto que ha sido cifrado utilizando el método del cifrado César.

    Args:
        texto_cifrado (str): El texto cifrado a descifrar. Debe estar en mayúsculas y solo incluir caracteres que estén en el alfabeto definido.
        desplazamiento (int): El número de posiciones que cada letra del texto fue desplazada durante el cifrado.

    Returns:
        str: El texto original descifrado si todos los caracteres son válidos.
        str: Un mensaje de error si algún caracter no es válido.

    Ejemplo:
        >>> descifrado_cesar("KROD PXQGR", 3)
        'HOLA MUNDO'
    """
    texto_descifrado = ""
    for letra in texto_cifrado:
        if letra in alfabeto:
            # Calculamos el índice original
            indice_original = (alfabeto.index(letra) - desplazamiento) % len(alfabeto)
            texto_descifrado += alfabeto[indice_original]
        elif letra in " ,.:":  # Si es un espacio, coma, punto o dos puntos, lo añadimos directamente
            texto_descifrado += letra
        else:  # Si no está en el alfabeto
            return "Todos los caracteres deben estar en mayúsculas y dentro del alfabeto."
    return texto_descifrado


# Prueba de la función de cifrado
texto_original = "HOLA MUNDO."
desplazamiento = 3
texto_cifrado = cifrado_cesar(texto_original, desplazamiento)
print("Texto cifrado:", texto_cifrado)  # Debería imprimir: "KROD PXQGR."

# Prueba de la función de descifrado
texto_descifrado = descifrado_cesar(texto_cifrado, desplazamiento)
print("Texto descifrado:", texto_descifrado)  # Debería imprimir: "HOLA MUNDO."

# Prueba con texto en minúsculas
texto_invalido = "Hola Mundo."
resultado_invalido = cifrado_cesar(texto_invalido, desplazamiento)
print(resultado_invalido)  # Debería imprimir: "Todos los caracteres deben estar en mayúsculas y dentro del alfabeto."

