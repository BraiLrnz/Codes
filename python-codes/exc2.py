#Ejercicio 2, realizar un programa de calificaciones.

calificacion = int(input("Ingrese la calficacion => "))

if  90 <= calificacion <= 100:
    print("Grado A")
    
elif 80 <= calificacion <= 89:
    print("Grado B") 

elif 70 <= calificacion <= 79:
    print("Grado C")

elif 60 <= calificacion <= 69:
    print("Grado D")

elif calificacion < 60:
    print("Grado F")
    
else:
    print("Calificacion Invalida") 