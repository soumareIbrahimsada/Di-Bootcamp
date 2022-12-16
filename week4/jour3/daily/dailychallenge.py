mot=input("saisissez un mot")
dict={}
for i,lettre in enumerate(mot):
    if lettre not in dict:
        dict[lettre]=[]
    dict[lettre].append(i)
print(dict)
        


    