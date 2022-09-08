function changeEnough(itemPrice, amountOfChange){
    totalMonaie=0.25*amountOfChange[0]+0.1*amountOfChange[1]+0.05*amountOfChange[2]+0.01*amountOfChange[3]
    console.log(totalMonaie)
    if (totalMonaie>itemPrice) {
        return true;    
    }else{
        return false;
    }

}
ressult= changeEnough(4.25, [25, 20, 5, 0])
console.log(ressult)
result2=changeEnough(14.11, [2,100,0,0])
console.log(result2)
result3=changeEnough(0.75, [0,0,20,5])
console.log(result3)