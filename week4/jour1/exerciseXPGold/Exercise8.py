# Exercise 8 : List and Tuple
# Instructions

#     Write a program which accepts a sequence of comma-separated numbers. Generate a list and a tuple which contain every number.

# Suppose the following input is supplied to the program: 34,67,55,33,12,98

# Then, the output should be:

# ['34', '67', '55', '33', '12', '98']
# ('34', '67', '55', '33', '12', '98')
liste=[]
tupl=()
nombre=input("Entrer des nombres separes par des virgules:")
liste=nombre.split(',')
tupl=eval(nombre)

print(liste)
print(tupl)