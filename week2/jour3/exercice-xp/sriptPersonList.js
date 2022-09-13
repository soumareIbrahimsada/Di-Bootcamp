//declararation et initialisation du tableau
let people = ["Greg", "Mary", "Devon", "James"];
//supression greg
people.shift();
console.log(people);
//pour remplacer « James » par « Jason ».
people.splice((people.length-1),1,"jason");
console.log(people);
//pour ajouter votre nom à la fin du tableau
people.push("sada");
console.log(people);
//
console.log(people.indexOf("Mary"))

let people2=people.slice(1,3)
console.log(people2)

let last= people.length-1
console.log(last)

//Etablissons une boucle for pour afficher les élements du tableau
for (let i= 0; i< people.length ;i++) {
    console.log(people[i])
}


//Etablissons une boucle for pour afficher les élements du tableau
for (let i= 0; i< people.length ;i++) {
    
    console.log(people[i])
    if (people[i]==="jason") {
        break;
    }
}