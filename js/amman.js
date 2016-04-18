window.addEventListener('DOMContentLoaded', init, false);

function init(){
    var clickables = document.getElementsByClassName("clickable");
    for (var i = 0; i < clickables.length; i++){
        clickables[i].addEventListener('click', sendRequest, false)
    }
}

function sendRequest(){
    id = this.className.split(' ')[1];
    excerptNum = this.innerHTML;
    
    // request to server
    var req;
    if(window.XMLHttpRequest){
        req = new XMLHttpRequest();
    } else{
    // for IE5, IE6
        req = new ActiveXObject("Microsoft.XMLHTTP");
    }
    // p to display excerpt
    var selectedP = document.getElementById(id);
    
    req.onreadystatechange = function(){
        // request finished/response ready, status ok
        if(req.readyState == 4 && req.status == 200){
            xmlSource = req.responseXML;
            // gets excerpts from XML
            var excerpts = xmlSource.getElementsByTagName("excerpt");
            // create attribute for right to left text
            var att = document.createAttribute("dir");
            att = "rtl";
            selectedP.setAttributeNode(att);
            // display excerpt in p
            selectedP.innerHTML = excerpts[excerptNum - 1].textContent;
        }
    };
    req.open("GET", "../data/project.xml", true);
    req.send();
}
