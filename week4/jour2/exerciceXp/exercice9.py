age="0"
listeDeCout=[]
while True :
    age=input("veillez saisir votre age,si vous avez finit saisissez quitter")
    if age=="quitter":
        break 
    elif int(age)<3:
        print("votre billet est gratuit")
    elif int(age)>=3 and int(age)<=12:
        print("votre billet vas coutez 10 dollars")
        cout=10
        listeDeCout.append(cout)
    elif int(age)>12:
        print("votre billet vas coutez 15 dollars")
        cout=15
        listeDeCout.append(cout)      
print(listeDeCout)
couTotale=0
compteur=len(listeDeCout)
for i in range(0,compteur):
    couTotale+=listeDeCout[i]
print("prix totale:",couTotale)


ListeDenom=["sada","ibrahim","joakim","jean","pascal","eliase"]
for name in ListeDenom:
    age2=int(input("{} saisissez votre age".format(name)))
    if age2<=16 or age2>=21 :
        ListeDenom.remove(name)
        print(ListeDenom)



    