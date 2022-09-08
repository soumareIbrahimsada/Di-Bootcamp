var nombre=prompt("veillez saisir le nombre de bouteille sur le mur")
while (isNaN(nombre)||(nombre<0)||(nombre==="")) {
    var nombre=prompt("veillez saisir le nombre de bouteille sur le mur")
}
var j=1
        console.log(nombre+"bottles of beer on the wall")
        console.log(nombre+"bottles of beer")
        console.log("Take "+j+" down, pass them around")
while(nombre>=0){
    console.log(nombre)
    if (nombre===0) {
        console.log("0 bottle of beer on the wall")
        nombre=Number(nombre)-1
    }else if(nombre===1){
        console.log(nombre+"bottles of beer on the wall")
        console.log(nombre+"bottles of beer")
        console.log("Take 1 down, pass it around")
        nombre=Number(nombre)-2
    }else {
        nombre=Number(nombre)-j
        console.log(nombre+"bottles of beer on the wall")
        console.log(nombre+"bottles of beer")
        j=j+1
        console.log("Take "+j+" down, pass them around")
    } 
}

