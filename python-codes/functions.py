
# Funciones
import time

choice = int(input("Elige el numero que deseas -> "))

def function(choice):
    for num in range (0, choice):
        if num % 5 == 0 and num % 3 == 0:
            print("fizzbuzz")
        elif num % 3 == 0:
            print("fizz")
        elif num % 5 == 0:
            print("buzz")

        else:
            print(num)

print("Wait for 3 seconds.....")
time.sleep(3)

function(choice)
