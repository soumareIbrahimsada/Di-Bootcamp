let building = {
    numberOfFloors : 4,
    numberOfAptByFloor : {
        firstFloor : 3,
        secondFloor : 4,
        thirdFloor : 9,
        fourthFloor : 2,
    },
    nameOfTenants : ["Sarah", "Dan", "David"],
    numberOfRoomsAndRent:  {
        sarah: [3, 990],
        dan :  [4, 1000],
        david : [1, 500],
    },
}
//affiché le nombre d'étage
console.log(building.numberOfFloors);
//affiché le nombre d'appartement au premier et au troisième étage
console.log(building.numberOfAptByFloor.firstFloor);
console.log(building.numberOfAptByFloor.thirdFloor);
//Console.log the name of the second tenant and the number of rooms he has in his apartment
console.log(building.nameOfTenants[1]);
console.log(building.numberOfRoomsAndRent.dan[0]);
//Check if the sum of Sarah’s and David’s rent is bigger than Dan’s rent. If it is, than increase Dan’s rent to 1200
let sumRent=building.numberOfRoomsAndRent.sarah[1]+building.numberOfRoomsAndRent.david[1]
let rentdan=building.numberOfRoomsAndRent.dan[1]
if ( sumRent>rentdan ) {
    building.numberOfRoomsAndRent.dan[1]=1200;
    console.log(building.numberOfRoomsAndRent.dan[1])
}