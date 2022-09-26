from random import randint
def jouer(a):
    b=randint(1,100)
    if a==b:
        print("felicitation!!!\nvous avez gagné")
    else:
        print("vous avez perdu {} et{} ne sont pas identique".format(a,b))

comparateur=[]
for i in range(1,101):
    comparateur.append(i)
print(comparateur)

c=int(input("entrez un nombre entre 1 et 100"))
while True :
    
    if c in comparateur :
        break;
    c=int(input("entrez un nombre entre 1 et 100"))
jouer(c)
    