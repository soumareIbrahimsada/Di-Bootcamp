h1=document.getElementsByTagName("h1")[0];
console.log(h1.textContent);

document.getElementsByTagName("p")[3].outerHTML="";

h2=document.getElementsByTagName("h2")[0];
h2.addEventListener("click", changecolor );
function changecolor(){
	let color=prompt("Entrez la couleur que vous desiriez voir en background");
	h2.style.background=color;

} 

h3=document.getElementsByTagName('h3')[0];
h3.addEventListener("click",desappear);
function desappear(){
	h3.style.display="none"
}

text=document.createTextNode("bold font");
button=document.createElement("button");
button.addEventListener("click", bold );
button.appendChild(text);
document.getElementsByTagName("article")[0].appendChild(button);

function bold(){
	p=document.getElementsByTagName("p");
	for (i in p){
		p[i].style.fontWeight="bold";
	}
}

h1.addEventListener('mouseover',changeSize);
function changeSize(){
	random = Math.floor(Math.random()*100)+1;
	h1.style.fontSize=(random+"px")
}

p2=document.getElementsByTagName("p")[1];
p2.addEventListener('mouseover',fade);
function fade(){

}



