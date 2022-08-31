let sentence = "The movie is not that bad, I like it";
let wordnotsentence= sentence.indexOf("not",0);
console.log(wordnotsentence);
let wordbadsentence= sentence.indexOf("bad",0);
console.log(wordbadsentence)
if(wordbadsentence>wordnotsentence){
    sentence=sentence.replace(/not that bad/g,"is good");
    console.log(sentence);
}else{
    console.log(sentence);
}