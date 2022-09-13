let names = ["Jack", "Philip", "Sarah", "Amanda", "Bernard", "Kyle"];
//classé les élements du tableau par ordre alphabetique
let ordernames= names.sort()
console.log(ordernames)
//récupérer et affiché le nom de la société sécret
let secretSocityName=ordernames[0].charAt(0)
console.log(secretSocityName)
for (let i=1;i<(names.length); i++) {
    secretSocityName += ordernames[i].charAt(0)  
}
console.log(secretSocityName)   
