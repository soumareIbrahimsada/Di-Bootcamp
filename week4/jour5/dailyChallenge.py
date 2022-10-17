#Écrivez un programme qui accepte une séquence de mots séparés par des virgules comme entrée et imprime les mots dans une séquence séparée par des virgules après les avoir triés par ordre alphabétique.Écrivez un programme qui accepte une séquence de mots séparés par des virgules comme entrée et imprime les mots dans une séquence séparée par des virgules après les avoir triés par ordre alphabétique.

chaine=input("Saisissiez une liste de mots séparé par des virgules")
liste=",".join(sorted(chaine.split(",")))
print(liste)
#Utiliser la compréhension de liste

liste2=[x for x in chaine]
print(liste2)
caract=""
liste3=[]
for i in liste2:
    if i!=",":
        caract=caract+i
    elif i==",":
        liste3.append(caract)
        caract=""
        continue
print(liste3)
liste3=",".join(sorted(liste3))
print(liste3)
