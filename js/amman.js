window.addEventListener("DOMContentLoaded", init, false);

function init(){
    var clickables = document.getElementsbyClassName("clickable");
    for (var i = 0; i < clickables.length; i++){
        clickables[i].addEventListener("click", sendRequest(this.id), false)
    }
}

function sendRequest(id){
    // request to server
    var req;
    if(window.XMLHttpRequest){
        req = new XMLHttpRequest();
    } else{
    // for IE5, IE6
        req = new ActiveXObject("Microsoft.XMLHTTP");
    }
    
    req.onreadystatechangte = getExcerpt(id);
}

function getExcerpt(id){
    // p to display excerpt
    var selectedP = document.getElementById(id.substring(1, id.length - 4));
    // excerpt number
    var excerptNum = id.substring(id.length - 4, id.length);

    // request finished/response ready, status ok
    if(req.readyState == 4 && req.status == 200){
        xmlSource = req.responseXML;
        // gets excerpts from XML
        var excerpts = xmlSource.getElementsByTagName("excerpt");
        // display excerpt in div
        selectedP.innerHTML = excerpts[excerptNum].innerHTML;
    }
    req.open("GET", "../data/project.xml", true);
    req.send();
}
