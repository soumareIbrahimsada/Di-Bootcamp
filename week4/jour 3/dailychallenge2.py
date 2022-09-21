items_purchase = {
"Water":1,
"Bread":3,
"TV":1000,
"Fertilizer":20
}
wallet =300
produit=[]
for i,j in items_purchase.items():
    if j<=wallet:
        produit.append(i)
print(produit)

items_purchase2 = {
"Apple":4,
"Honey":3,
"Fan":14,
"Bananas":4,
"Pan":100,
"Spoon":2,
}
wallet =100
produit=[]
for i,j in items_purchase2.items():
    if j<=wallet:
        produit.append(i)
print(sorted(produit))

items_purchase3 = {
"Phone":999,
"Speakers":300,
"Laptop":5000,
"PC":1000,
}
wallet =1
produit=[]
for i,j in items_purchase2.items():
    if j<=wallet:
        produit.append(i)
if produit==[]:
    print("Nothing")
else:
    print(sorted(produit))
