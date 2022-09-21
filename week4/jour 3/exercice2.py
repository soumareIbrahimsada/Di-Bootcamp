family = {"rick": 43, 'beth': 13, 'morty': 5, 'summer': 8}
coutTotale=0
for i in family:
    age=family[i]   
    if age<3:
        print("c'est gratuit")
    elif age>=3 and age<=12:
        print("vous devez payez 10 dollars")
        coutTotale= coutTotale+ 10
    elif age>12:
        print("vous devez payez 15 dollars")
        coutTotale= coutTotale+ 15
print("le cout totale est:",coutTotale)       
