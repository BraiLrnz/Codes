# 1. Creación del Menú

# Creando la lista de platos
platos = ["Paella", "Risotto", "Sushi", "Tacos", "Pizza"]

# Creando la tupla de precios
precios = (15, 12, 20, 10, 8)

# Utilizando slicing para seleccionar platos
platos_seleccionados = platos[1:4]  # Del segundo al cuarto plato

# Creando el diccionario del menú
menu = {
    platos[0]: precios[0],
    platos[1]: precios[1],
    platos[2]: precios[2],
    platos[3]: precios[3],
    platos[4]: precios[4]
}

# 2. Exploración del Menú

# Imprimiendo el menú completo
descripcion_menu = (
    f"Bienvenidos a nuestro menú especial: "
    f"\n - Paella: {menu['Paella']} euros"
    f"\n - Risotto: {menu['Risotto']} euros"
    f"\n - Sushi: {menu['Sushi']} euros"
    f"\n - Tacos: {menu['Tacos']} euros"
    f"\n - Pizza: {menu['Pizza']} euros"
)
print(descripcion_menu)

# Imprimiendo el nombre y precio del tercer plato
tercer_plato = platos[2]
precio_tercer_plato = menu[tercer_plato]
print(f"El tercer plato es {tercer_plato} y su precio es {precio_tercer_plato} euros.")

# Utilizando stride para obtener platos en posiciones pares
platos_pares = platos[0::2]
print(f"Los platos en posiciones pares son: {platos_pares}")