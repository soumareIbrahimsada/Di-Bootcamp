let users = ["Lea123", "Princess45", "cat&doglovers", "helooo@000"];
let usersNumber= users.length
console.log(usersNumber)
if(usersNumber==0){
    console.log ("no one is online")

}else if(usersNumber==1) {
    console.log("is online " +users[1])
    
}else if(usersNumber==2) {
    console.log( users[1] + " and " + users[2] + " are online  " )   
}else if(usersNumber>2) {
    console.log(users[1]  + " , "+ users[2] + " and " + (usersNumber-2) + " are online " )
}