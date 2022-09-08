do {
   var nombre= prompt("Entrez un nombre supérieur à 10");
    if ((typeof nombre)==(typeof 1)) {
        console.log('it is a number');
    } else {
        console.log('it is not a number');
    }
} while (nombre<10);