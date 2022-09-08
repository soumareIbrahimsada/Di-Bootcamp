//Create an object called family with a few key value pairs
let family={
    nameofFamily: 'soumare',
    nombreDeMembre: 10,
    vileOfResidence: "Bobo-Dioulasso",
}
//Using a for in loop, console.log the keys of the object
for(let x in family) {
    console.log(x)
}
//Using a for in loop, console.log the values of the object.
for(let x in family) {
    console.log(family[x])
}