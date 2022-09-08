var nombre=prompt("veillez saisir le nombre de bouteille sur le mur")
while (isNaN(nombre)||(nombre<0)||(nombre==="")) {
    var nombre=prompt("veillez saisir le nombre de bouteille sur le mur")
}
var j=1
console.log(nombre+"bottles of beer on the wall")
    console.log(nombre+"bottles of beer")
    console.log("Take "+j+" down, pass it around")

while((nombre!==0)||(nombre!==1)||(nombre>=0)) {
    nombre=Number(nombre)-j
    j=j+1
    console.log(nombre)
}

