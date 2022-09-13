
 var allBoldItems;
var selec=document.body.lastElementChild.previousElementSibling;

function getBold_items() {
return selec.getElementsByTagName("strong");
}

allBoldItems=getBold_items();




function highlight() {
	for(i of allBoldItems){
		i.style.color="blue"
	}
}

function return_normal() {
	for(i of allBoldItems){
		i.style.color="black"
	}
}
selec.addEventListener('mouseover', highlight);
selec.addEventListener('mouseout', return_normal);



