
numeros_1 = 10
numeros_2 = 5

string_1 = "Texto1"
string_2 = "Texto2"

lista_1 = ["Valor1", "Valor2", "Valor3"]
lista_2 = ["Valor4", "Valor5", "Valor6"]

dic_1 = {"clave1": "Valor1", "clave2": "Valor2"}
dic_2 = {"clave3": "Valor3", "clave4": "Valor4"}


print(string_1 + string_2)
print(string_1 == string_2)
print(len(string_1) > len(string_2))

numeros_1 += 9

print(numeros_1)

lista_1 += ["x", "y", "z"]

print(lista_1)

print("Valor1" in lista_1)

print("Valor1" not in lista_1)

print(numeros_1 > numeros_2 or "Valor1" in lista_1)

print(not("Valor45 " in lista_1))

print(type(numeros_1) is int)