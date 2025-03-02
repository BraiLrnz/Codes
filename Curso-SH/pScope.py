# Variable global
puntos_globales = 0

def registro_puntos():
    # Variable local
    puntos_partida = 100

    def bonus_puntos():
        nonlocal puntos_partida
        bonus = 10
        puntos_partida += bonus
        print(f"Bonus aplicado: {bonus}. Puntos de partida después del bonus: {puntos_partida}")

    # Llamada a la subfunción para aplicar el bonus
    bonus_puntos()

    global puntos_globales
    puntos_globales += puntos_partida
    print(f"Puntos de partida: {puntos_partida}, Puntos globales después de la partida: {puntos_globales}")

# Llamada a la función registro_puntos para simular el registro de puntos
registro_puntos()

# Imprimir el estado final de las variables
print(f"Estado final - Puntos globales: {puntos_globales}")
