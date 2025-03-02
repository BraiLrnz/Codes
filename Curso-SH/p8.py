# Inicializar los fondos y la lista de acciones financieras
fondos = 10000  # Fondos iniciales en euros
acciones = [2000, -500, 300, -50]  # Lista de movimientos financieros

# Imprimir el balance inicial
print(f"Fondos iniciales: {fondos}")

# Inicializar la variable indice
indice = 0

# Bucle while para recorrer la lista de acciones
while indice < len(acciones):
    # Obtener la acción actual
    accion_actual = acciones[indice]
    
    # Comprobar si la acción es un gasto y si hay fondos suficientes
    if accion_actual < 0 and abs(accion_actual) > fondos:
        print(f"Acción omitida por insuficiente fondos: {accion_actual}")
    else:
        # Procesar la acción (sumar o restar fondos)
        fondos += accion_actual
        print(f"Acción procesada: {accion_actual}. Fondos actuales: {fondos}")
    
    # Incrementar el índice
    indice += 1

# Imprimir los fondos finales después de todas las acciones
print(f"Fondos finales después de las acciones: {fondos}")
