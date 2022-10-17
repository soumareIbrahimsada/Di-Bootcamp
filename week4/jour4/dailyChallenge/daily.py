matrix=[
    [7,'i',3],
    ['T','s','i'],
    ['h','%','x'],
    ['i',' ','#'],
    ['s','M',' '],
    ['$','a',' '],
    ['#','t','%'],
    ['^','r','!']
]
matrix2=list(zip(*matrix))
print(matrix2)
tm=len(matrix2)
hm=len(matrix2[0])
sortie=[]
for i in range(tm)
    caract=0
    for j in range(hm)
        caract=matrix2[i][j]
        if type(caract)==int:
            continue
        else:
            sortie.append(caract)
l = "".join(l)
print(re.sub('(?<=[a-zA-Z])+[^a-zA-Z]+(?=[a-zA-Z])',' ',l))
       
        
        
