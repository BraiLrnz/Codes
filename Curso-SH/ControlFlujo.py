
lista = ["tarea1", "tarea2", "tarea3",]

lista_dic = {
    "tarea1": "Completado",
    "tarea2": "Entragada",
    "tarea3": "En proceso"
}

print("Mis tareas asignadas son las siguientes:")
 
for x in lista_dic:
    print("Estoy trabajando con: ", x)
    print("Estado: ", lista_dic[x])
    
    
lista_dic_iter = iter(lista_dic)

print(type(lista_dic_iter))

print(next(lista_dic_iter))

print(next(lista_dic_iter))

