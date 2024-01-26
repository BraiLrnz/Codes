
#frutas = ["manzana", "guineo", "melon", "pera"]
#for fruta in frutas:
#    print("Yo como", fruta)
#   print(fruta)
    
for num in range (0, 100):
    if num % 5 == 0 and num % 3 == 0:
        print("fizzbuzz")
    elif num % 3 == 0:
        print("fizz")
    elif num % 5 == 0:
        print("buzz")

    else:
        print(num)
