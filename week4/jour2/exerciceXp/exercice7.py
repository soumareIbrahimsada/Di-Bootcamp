#Demandez à l’utilisateur d’entrer son ou ses fruits préférés (un ou plusieurs fruits).
fruitsFaviries=input("entrez vos fruits préférés séparé d'une virgule")
#Conservez le(s) fruit(s) préféré(s) dans une liste (convertissez la chaîne de mots en une liste de mots).
listeFruits=fruitsFaviries.split(" ")
print(listeFruits)
newFruit=input("choisissez un fruit")
if newFruit in listeFruits:
    print("Vous avez choisi l’un de vosfruits préférés! Profitez-en!")
else:
    print("Vous avez choisi un nouveau fruit. J’espèreque vous apprécierez")
 

    