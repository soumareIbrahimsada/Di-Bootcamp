 form=document.forms[0];
 console.log(form)
 
in1=document.getElementById("fname");
console.log(in1);
in2=document.getElementById("lname");
console.log(in2);
in3=document.getElementById("submit");
console.log(in3);

 input=document.getElementsByTagName('input');
 console.log(input.fname);
 console.log(input.lname);
 console.log(input.submit);

function isLetter(str) {
  return  str.match(/[a-z]/i);
}

form.addEventListener('submit',function(event){
  event.preventDefault();
  fname=input.fname.value;
  lname=input.lname.value;
  if(fname=="" || lname=="" || !isLetter(fname) || !isLetter(lname)){
  	alert("Veuillez renseignez votre nom et prenom")

  }else{
  console.log("hello "+fname+" "+lname)}

for(let i=0 ; i<(input.length-1);i++){
	li=document.createElement('li');
	text=document.createTextNode(input[i].value);
	li.appendChild(text);
    document.getElementsByTagName('ul')[0].appendChild(li)
}




});
