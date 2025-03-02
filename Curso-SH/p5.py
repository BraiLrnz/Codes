# Definir la variable de contraseña
password = "Testpass1234"

# Verificar los criterios de seguridad
longitud = len(password) >= 8
caracter = '@' not in password and '#' not in password
numero = any(char.isdigit() for char in password)
espacios = ' ' not in password

# Verificar si la contraseña cumple con todos los criterios
cumple_criterios = longitud and caracter and numero and espacios

# Imprimir los resultados
print(f"Contraseña: {password}")
print(f"¿La contraseña cumple con los criterios establecidos? {cumple_criterios}")

