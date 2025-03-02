
class Coche:
    def __init__(self, vel_max):
        self.max_vel = vel_max
        
    
    def vel_maxima(self):
        print("velocidad maxima: ", self.max_vel)   

coche1 = Coche(150)
coche2 = Coche(250)

coche1.vel_maxima()
coche2.vel_maxima()

#print(type(coche1))


#print(coche1.atrinuto_clase) 
