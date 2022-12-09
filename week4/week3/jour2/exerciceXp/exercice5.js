button=document.body.lastElementChild.previousElementSibling;
button.addEventListener("click", clicked);
button.addEventListener("mouseover", over);
button.addEventListener("mouseout", out);
button.addEventListener("dbclick", db);
function clicked(event){
  event.preventDefault();
    form.style.fontSize="40px"
    form.radius.style.border="solid 5px red"
    form.radius.style.height="50px";
  
}

function over(event){


  let left=0;
  event.preventDefault();
  form.style.position="relative";
  left+=40
  form.style.left=left+"%";
      

}

function out(event){
    event.preventDefault();
    form.style.margin="50px";
    form.style.height="300px"
}
function db(event){
    event.preventDefault();

}
