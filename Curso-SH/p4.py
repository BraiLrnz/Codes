# Definir las variables de puntuaciones
puntuacion_pentesting = 8.5
puntuacion_analisis_vulnerabilidades = 9.0
puntuacion_desarrollo_exploits = 7.8

# Definir los pesos
peso_pentesting = 0.50
peso_analisis_vulnerabilidades = 0.20
peso_desarrollo_exploits = 0.30

# Calcular la puntuacion_final
puntuacion_final = (puntuacion_pentesting * peso_pentesting +
                    puntuacion_analisis_vulnerabilidades * peso_analisis_vulnerabilidades +
                    puntuacion_desarrollo_exploits * peso_desarrollo_exploits)

# Determinar si el alumno está aprobado
participante_aprobado = puntuacion_final >= 5

# Determinar si el alumno tiene distinción de honor
distincion_honor = puntuacion_final == 10

# Imprimir los resultados
print(f"La puntuación final es: {puntuacion_final:.1f}")
print(f"¿Participante aprobado?: {participante_aprobado}")
print(f"¿Distinción de honor?: {distincion_honor}")
