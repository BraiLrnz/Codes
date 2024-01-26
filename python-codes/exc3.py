
# Ejercicio numero 3
import random

print("------------------")
print("Nuevo Challenge!!")
print("------------------")

words = ["cibersecurity", "ssrf", "blueteam", "redteam", "network", "internet", "python"]

secret_word = random.choice(words)

guess = input("Cual letra crees que esta dentro de mi wordlist? ").lower()

print(guess)

for letter in secret_word:
    if letter == guess:
        print("Es Correcto!")
    else:
        print("Equivocado :( ")