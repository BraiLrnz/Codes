# Definir la tupla con los niveles de amenaza
niveles_amenaza = ("bajo", "moderado", "alto", "crítico")

# Asignar un nivel de amenaza actual
amenaza_actual = "bajo"  # Puedes cambiar este valor para probar diferentes casos

# Verificar si el nivel de amenaza actual es válido
if amenaza_actual in niveles_amenaza:
    # Evaluar el nivel de amenaza y recomendar una actividad
    if amenaza_actual == "bajo":
        print(f"Nivel de amenaza actual: {amenaza_actual}")
        print("Actividad recomendada: Realizar auditorías de seguridad regulares.")
    elif amenaza_actual == "moderado":
        print(f"Nivel de amenaza actual: {amenaza_actual}")
        print("Actividad recomendada: Reforzar la concienciación de los empleados sobre riesgos de Ciberseguridad.")
    elif amenaza_actual == "alto":
        print(f"Nivel de amenaza actual: {amenaza_actual}")
        print("Actividad recomendada: Implementar medidas de seguridad adicionales y revisar accesos.")
    elif amenaza_actual == "crítico":
        print(f"Nivel de amenaza actual: {amenaza_actual}")
        print("Actividad recomendada: Activar el protocolo de respuesta a incidentes.")
else:
    # Si el nivel de amenaza no es válido, mostrar un mensaje de error
    print("Selecciona un nivel de amenaza adecuado (bajo, moderado, alto, crítico).")
