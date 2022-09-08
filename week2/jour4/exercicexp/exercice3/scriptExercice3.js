function isDivisible(){
    let tableau=[]
    let somme=0;
for(let i=0;i<500.;i++){
    if ((i%23)==0){
        tableau[i]=i
        somme=Number(somme)+Number(tableau[i])
    } 
}
console.log(tableau)
console.log(somme) 
}
isDivisible()