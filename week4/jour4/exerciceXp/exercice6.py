#Passez la liste à une fonction appelée , qui imprime le nom de chaque magicien de la liste.
magician_names = ['Harry Houdini', 'David Blaine', 'Criss Angel']
def show_magicians(magic):
    for i in magic:
        print(i)
show_magicians(magician_names)
#Écrivez une fonction appelée qui modifie la liste des magiciens en ajoutant la phrase au nom de chaquemagicien.
def make_great(magic2):
    j=[]
    for i in magic2:
        i="the Great "+i
        j.append(i)
    magic2.clear()
    magic2=j
    return magic2
magician_names=make_great(magician_names)
show_magicians(magician_names)

    
