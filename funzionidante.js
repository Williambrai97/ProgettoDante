var nodisuppliedomitted;
var nodisuppliedsupport;
var nodiespansioni;
var nodiPersName;
var nodiplaceName;
var lunghezzaArr1;
var lunghezzaArr2;
var lunghezzaArr3;
var lunghezzaArr4;
var lunghezzaArr5;


function gestoreLoad () {
    try {
        nodisuppliedomitted = document.getElementsByClassName("omitted-in-original");
        nodisuppliedsupport = document.getElementsByClassName("support-damage");
        nodiPersName = document.getElementsByClassName("persName");
        nodiplaceName = document.getElementsByClassName("placeName");
        nodiespansioni = document.getElementsByClassName("expan");
        lunghezzaArr1 = nodisuppliedomitted.length;
        lunghezzaArr2 = nodisuppliedsupport.length;
        lunghezzaArr3 = nodiPersName.length;
        lunghezzaArr4 = nodiplaceName.length;
        lunghezzaArr5 = nodiespansioni.length;

     } catch ( e ) {
        alert("gestoreLoad " + e);
        }
     }
window.onload = gestoreLoad;



function coloraomitted(){
    for (var i = 0; i < lunghezzaArr1; i++) 
    {
        if(nodisuppliedomitted[i].style.color != "red")
        {
            nodisuppliedomitted[i].style.color = "red";
            nodisuppliedomitted[i].style.fontSize = "larger";
        }

        else{
            nodisuppliedomitted[i].style.color = "black";
            nodisuppliedomitted[i].style.fontSize = "19px";
        }
    }
}

function colorasupport(){
    for (var i = 0; i < lunghezzaArr2; i++) 
    {
        if(nodisuppliedsupport[i].style.color != "orange")
        {
            nodisuppliedsupport[i].style.color = "orange";
            nodisuppliedsupport[i].style.fontSize = "larger";
        }

        else{
            nodisuppliedsupport[i].style.color = "black";
            nodisuppliedsupport[i].style.fontSize = "19px";
        }
    }
}

function coloranomi(){
    for (var i = 0; i < lunghezzaArr3; i++) 
    {
        if(nodiPersName[i].style.color != "green")
        {
            nodiPersName[i].style.color = "green";
            nodiPersName[i].style.fontSize = "larger";
        }

        else{
            nodiPersName[i].style.color = "blue";
            nodiPersName[i].style.fontSize = "medium";
        }
    }
}

function coloraluoghi(){
    for (var i = 0; i < lunghezzaArr4; i++) 
    {
        if(nodiplaceName[i].style.color != "gray")
        {
            nodiplaceName[i].style.color = "gray";
            nodiplaceName[i].style.fontSize = "larger";
        }

        else{
            nodiplaceName[i].style.color = "blue";
            nodiplaceName[i].style.fontSize = "medium";
        }
    }
}

function espansioni(){
    for (var i=0; i<lunghezzaArr5; i++)
    {
            if(nodiespansioni[i].style.display=="none"){
                nodiespansioni[i].style.display = "block";
            }
        else{
            nodiespansioni[i].style.display = "none";
        }
    }
}

function apri(){
    document.getElementById("menu1").classList.toggle("menufiltro");
}


function liste(i){
    document.getElementById("menul"+i).classList.toggle("menulist");
}


function cambia(apri, chiudi) {
	 
    // mostro il div ricevuto come apri
    document.getElementById(apri).style.display='block';
    
    // imposto il separatore dei valori in array
    var mySplit = chiudi.split(" ");
    
    // ciclo di chiusura div per ogni elemento dell'array
    for(i = 0; i < mySplit.length; i++) {
        document.getElementById(mySplit[i]).style.display='none';
    }
      
}

function aprimanuscript() {
    document.getElementById("Manuscript_content").classList.toggle("manuscript");
}

function apriregesto(i) {
    document.getElementById("regesto"+i).classList.toggle("regesto");
}