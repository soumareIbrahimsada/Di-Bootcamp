function calculateTip(){
    let montant=prompt("saisissez le montant de la facture");
    if (montant<50){
        let pourboire=(montant*20)/100;
        var factureTotal=Number(pourboire)+Number(montant);
        console.log(factureTotal);
    }
    if (montant>=50 && montant<200){
        let pourboire=(montant*15)/100;
        console.log(pourboire);
        var factureTotal=Number(pourboire)+Number(montant);
        console.log(factureTotal);
    }
    if (montant>200){
        let pourboire=(montant*10)/100;
        var factureTotal=Number(pourboire)+Number(montant);
        console.log(factureTotal);
    }
}
calculateTip()