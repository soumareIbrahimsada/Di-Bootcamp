#Utilisez une boucle pour imprimer tous les nombres de 1 à 20 inclus.
for i in range(1,21):
    print(i)
list=[]
#À l’aide d’une boucle, qui boucle de 1 à 20 (inclus), imprimez chaque élément qui a un index pair.
for i in range(1,21):
    list.append(i)
for i in range(1,21,2):
    print(list[i])
    

    
