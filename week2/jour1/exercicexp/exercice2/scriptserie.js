//partie 1
let myWatchedSeries = ["black mirror", "money heist", "the big bang theory"];
let tailleTablaux=  myWatchedSeries.length;
console.log(tailleTablaux);

let serieRegarde= myWatchedSeries.toString();
console.log( serieRegarde);
console.log(" I watched " +tailleTablaux+ " series : " +serieRegarde)
//partie 2
myWatchedSeries[myWatchedSeries.indexOf("the big bang theory")]="friend"
myWatchedSeries.push("mentalist")
myWatchedSeries.unshift("LIETMAN")
myWatchedSeries.splice(myWatchedSeries.indexOf("black mirror"),1)
console.log(myWatchedSeries[myWatchedSeries.indexOf("money heist")].charAt(2))
console.log(myWatchedSeries)