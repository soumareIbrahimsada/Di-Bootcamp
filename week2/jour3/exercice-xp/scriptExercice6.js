let details = {
    my: 'name',
    is: 'Rudolf',
    the: 'raindeer'
  }
let phrase=""
for (let x in details) {
    phrase +=x+" "+details[x]+" "
}
console.log(phrase)