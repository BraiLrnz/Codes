# Definir el inventario como una lista de tuplas
inventario = [
    ("Nmap", 50, 0.5),
    ("Wireshark", 30, 0.3),
    ("Metasploit", 20, 0.4),
    ("Burp Suite", 15, 0.45)
]

# Inicializar variables para analizar el inventario
valor_total = 0
mayor_cantidad = {"herramienta": "", "cantidad": 0, "precio": 0}

# Recorrer el inventario
for herramienta, cantidad, precio in inventario:
    # Actualizar el valor total del inventario
    valor_total += cantidad * precio
    
    # Comprobar si esta herramienta tiene la mayor cantidad de licencias
    if cantidad > mayor_cantidad["cantidad"]:
        mayor_cantidad["herramienta"] = herramienta
        mayor_cantidad["cantidad"] = cantidad
        mayor_cantidad["precio"] = precio

# Imprimir los resultados de la primera parte
print(f"Valor total del inventario: {valor_total} eur")
print(f"Herramienta con mayor cantidad de licencias: {mayor_cantidad['herramienta']} ({mayor_cantidad['cantidad']} unidades)")


# Definir el diccionario de compra
compra = {
    "Nmap": 5,
    "Wireshark": 3
}

# Inicializar la variable para el precio total de la adquisición
precio_total = 0

# Recorrer el inventario nuevamente para simular la compra
for herramienta, cantidad, precio in inventario:
    if herramienta in compra:
        precio_total += compra[herramienta] * precio

# Imprimir el resultado de la adquisición
print(f"Precio de la adquisición: {precio_total} eur")
