garniture=""
liste=[]
while garniture!="quitter":
    garniture=input("entrez une garniture que vous souhaitez ajouter à votre pizza, si vous avez finit entrez quitter")
    print("nous ajouterons{}à votre pizza".format(garniture))
    liste.append(garniture)
print(liste)
cout=10+2.5*(len(liste))
print("cout totale:",cout)


    