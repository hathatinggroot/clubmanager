
var changeColor = function(){
	if(this.checked){
		this.closest("label").style.color="blue";
	}else{
		this.closest("label").style.color="black";
	}

}

var dpNone = document.getElementsByClassName("dp-none")
for(var obj of dpNone){
	obj.addEventListener("click",changeColor);
}

window.onload=function(){
	for(var obj of dpNone){
		if(obj.checked){
			obj.closest("label").style.color="blue";
		}else{
			obj.closest("label").style.color="black";
		}
	}
};

