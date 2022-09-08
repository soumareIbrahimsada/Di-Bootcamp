let stock = { 
    "banana": 6, 
    "apple": 0,
    "pear": 12,
    "orange": 32,
    "blueberry":1
}  

let prices = {    
    "banana": 4, 
    "apple": 2, 
    "pear": 1,
    "orange": 1.5,
    "blueberry":10
} 
let shoppingList=["banana","orange","apple"]
let prixTotale=0
function mybill(){
    for (let i of shoppingList) {
        if(i in stock){
            if (stock[i]>0) {
                prixTotale= Number(prixTotale)+prices[i]
            }
        }
    }
    
    console.log("les produits choisi coute "+prixTotale)

}
mybill()
