class Coche():
    #Esta clase representa un coche
    def __init__(self, modelo, potencia, consumo):
        #Incializa los atributos de instancia.
        
        '''Argumentos posicionales:
        modelo -- string que representa el modelo del cohce
        potencia -- int que representa la potencia en cv
        consumo -- int que representa el consumo en litros/100km
        '''
        self.modelo = modelo
        self.potencia = potencia
        self.consumo = consumo
        self.km_actuales = 0
        
    def especificaciones(self):
        '''Muestra las especificaciones del coche.'''
        print("Modelo:", self.modelo,
              f"\nPotencia: {self.potencia} cv",
              f"\nConsumo: {self.consumo} l/100km",
              "\nKilometros actuales:", self.km_actuales)
    
    def actualizar_km(self, kilometros):
        '''Actualiza los km de los que tiene actualmente.'''
        if kilometros > self.km_actuales:
            self.km_actuales =  kilometros
        else:
            print("ERROR: No se puede actualizar el numero de km a una cantidad menor")
            
            
class CocheElectrico(Coche):
    '''Esta clase represnta un coche electrico'''
    
    def __init__(self, modelo, potencia, consumo):
        super().__init__(modelo, potencia, consumo)
        
    def especificaciones(self):
        '''Muestra las especificaciones del coche.'''
        print("Modelo:", self.modelo,
              f"\nPotencia: {self.potencia} cv",
              f"\nConsumo: {self.consumo} kwh/100km",
              "\nKilometros actuales:", self.km_actuales)

coche_maserati = Coche("Maserati", 290, 25)

coche_tesla = CocheElectrico("Tesla", 150, 50)

coche_tesla.especificaciones()



#coche_maserati.actualizar_km(10000)

#coche_maserati.actualizar_km(1000)

#coche_maserati.especificaciones()