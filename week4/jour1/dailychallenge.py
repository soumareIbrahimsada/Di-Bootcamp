phrase=input("saisissez une phrase de 10 carartères")
taille=len(phrase)
if taille<10:
    print("moin de 10 caractères, il est faut exactement 1O caractères")      
elif taille>10:
    print("plus de 10 caractères, il est faut exactement 1O caractères")
print(phrase[0])
print(phrase[taille-1])
affiche=""
for i in range(taille-1):
         affiche+=phrase[i]
         print(affiche)
    
       

        