from random import uniform 
#Créez une fonction appelée
def get_random_temp(saison):
    if saison=="été":
        return uniform(24,40)
    if saison=="automne":
        return uniform(5,15)
    if saison=="hiver":
        return uniform(-10,4)
    if saison=="primtemp":
        return uniform(10,23)
def main():
    S=input("choisissez la saison: été, automne, primtemp, hiver")
    a=get_random_temp(S)
    print("La température en cemoment est de {} degrés Celsius.".format(a))
    if a<0:
        print("Brrr, c’est glacial! Portez quelques couches supplémentaires aujourd’hui")
    elif a>=0 and a<16:
        print("Assez froid! N’oubliez pas votre manteau »")
    elif a>=16 and a<24:
        print("pensez à vous couvrir légèrement")
    elif a>=24 and a<32:
        print("sortez les maillot de bain")
    elif a>=32:
        print("Appliquez de la crème solaire et hydratez-vous régulièrement")
    
main()
