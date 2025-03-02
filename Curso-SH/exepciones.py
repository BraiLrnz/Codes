
try:
    print(var)
except:
    print("Variable not found")
    
print("El programa sigue ejecutandose")


colores = ("azul", "amarillo", "verde")

c = "morado"

if c not in colores:
    raise Exception(f"El color {c}  no se encuentra entre los colores")