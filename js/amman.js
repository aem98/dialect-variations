window.addEventListener("DOMContentLoaded", init, false);

function init(){
    var clickables = document.getElementsbyClassName("clickable");
    for (var i = 0; i < clickables.length; i++){
        clickables[i].addEventListener("click", sendRequest(this.className.split(' ')[1], this.innerHTML), false)
        console.log("1");
    }
}

function sendRequest(id, excerptNum){
    console.log("2");
    // request to server
    var req;
    if(window.XMLHttpRequest){
        req = new XMLHttpRequest();
    } else{
    // for IE5, IE6
        req = new ActiveXObject("Microsoft.XMLHTTP");
    }
    console.log("3");
    req.onreadystatechangte = getExcerpt(id, excerptNum);
    console.log("4");
    req.open("GET", "../data/project.xml", true);
    req.send();
    console.log("5");
}

function getExcerpt(id, excerptNum){
    console.log("6");
    // p to display excerpt
    var selectedP = document.getElementById(id);

    // request finished/response ready, status ok
    if(req.readyState == 4 && req.status == 200){
        console.log("7");
        xmlSource = req.responseXML;
        // gets excerpts from XML
        var excerpts = xmlSource.getElementsByTagName("excerpt");
        // display excerpt in div
        selectedP.innerHTML = excerpts[excerptNum].innerHTML;
    }
}
