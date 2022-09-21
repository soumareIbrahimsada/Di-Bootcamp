users = ["Mickey","Minnie","Donald","Ariel","Pluto"]
disney_users_A={}
disney_users_A={}
disney_users_B={}
disney_users_C={}
a=0
b=1
for i in users:
    for j in range(a,b):
        disney_users_A[i]=j
    a+=1
    b+=1
print(disney_users_A)

c=0
d=1
for k in users:
    for l in range(c,d):
        disney_users_B[l]=k
    c+=1
    d+=1
print(disney_users_B)

a=0
b=1
for i in sorted(users):
    for j in range(a,b):
        disney_users_C[i]=j
    a+=1
    b+=1
print(disney_users_C)

for disney in users:
    if 'i' in disney:
        print(disney)


        


    
    