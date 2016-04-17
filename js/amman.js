window.addEventListener('DOMContentLoaded', init, false);

function init(){
    var clickables = document.getElementsByClassName("clickable");
    for (var i = 0; i < clickables.length; i++){
        clickables[i].addEventListener('click', sendRequest, false)
        console.log("1");
    }
}

function sendRequest(){
    id = this.className.split(' ')[1];
    excerptNum = this.innerHTML;
    console.log("2");
    // request to server
    var req;
    if(window.XMLHttpRequest){
        console.log("not IE");
        req = new XMLHttpRequest();
    } else{
    // for IE5, IE6
        req = new ActiveXObject("Microsoft.XMLHTTP");
    }
    console.log("3");
    // p to display excerpt
    var selectedP = document.getElementById(id);
    console.log("4");
    req.onreadystatechange = function(){
        console.log("5");
        // request finished/response ready, status ok
        if(req.readyState == 4 && req.status == 200){
            console.log("7");
            xmlSource = req.responseXML;
            // gets excerpts from XML
            var excerpts = xmlSource.getElementsByTagName("excerpt");
            // display excerpt in p
            selectedP.innerHTML = excerpts[excerptNum].innerHTML;
        }
    };
    req.open("GET", "../data/project.xml", true);
    req.send();
}
