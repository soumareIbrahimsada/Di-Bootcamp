//fonction pour calculer le cout de la chambre
function hotelCost(){
    var nombreDeNuits=prompt("combien de nuits allez-vous passer à l'hotel?")
    var coutHotel
    while (isNaN(nombreDeNuits)||(nombreDeNuits<0)||(nombreDeNuits==="")) {
        nombreDeNuits= prompt("combien de nuits allez-vous passer à l'hotel?")
    }
    console.log(nombreDeNuits)
    coutHotel=140*(Number(nombreDeNuits));
    console.log(coutHotel)
    console.log("votre hotel coutera "+ coutHotel)
    
     
}
hotelCost()
//fonction pour calculer le cout du billet d'avion
function isLetter(str){
    return str.match(/[a-z]/i);
}
   
function planeRideCost(){
    var ville= prompt("ou allez-vous? londres ou paris ou autres")
    while(!isLetter(ville) || (ville=="")){
    ville= prompt("ou allez-vou? londres ou paris ou autres")
   }
   var coutAvion
    if (ville=="londres") {
        coutAvion=183  
    }else if (ville=="paris") {
        coutAvion=220    
    } else {
      coutAvion=300  
    }
    console.log("votre billet d'avion coutera "+coutAvion)
    return coutAvion
}
planeRideCost()