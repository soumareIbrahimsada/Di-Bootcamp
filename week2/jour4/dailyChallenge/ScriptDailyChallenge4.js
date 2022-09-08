let saisie= prompt("Ecrivez plusieur mots séparés des un et des autres par une virgule")
console.log(saisie)
let tableau=saisie.split(",")
for (let x of tableau) {
    console.log(x)
}
