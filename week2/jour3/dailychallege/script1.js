//creons un tableau dont les element seront des ligne de 1à 6 étoiles
let tab=["*","**","***","****","*****","******"];
//Etablissons une boucle for pour afficher les élements du tableau
for (let i= 0; i< tab.length ;i++) {
    console.log(tab[i])
}
//creons un tableau dont les element seront des ligne de 1à 6 étoiles avec deux boucles
let etoile="*"
for (let i= 0; i<7 ;i++) {
    console.log(etoile)
    etoile="*"
    
    for (let j=0; j<i; j++) {
        etoile= etoile+"*"
    }
}