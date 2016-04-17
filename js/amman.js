window.addEventListener('DOMContentLoaded', init, false);

function init(){
    var clickables = document.getElementsByClassName("clickable conDef");
    for (var i = 0; i < clickables.length; i++){
        //clickables[i].addEventListener('click', sendRequest(this.className, this.innerHTML), false)
        clickables[i].onclick = show_message;
        console.log("1");
    }
}

function show_message(){
    alert(this.className);
}

function sendRequest(c, excerptNum){
    ids = String(c).split(' ');
    id = ids[1]
    console.log("2");
    // request to server
    /*var req;
    if(window.XMLHttpRequest){
        console.log("not IE");
        req = new XMLHttpRequest();
    } else{
    // for IE5, IE6
        req = new ActiveXObject("Microsoft.XMLHTTP");
    }
    console.log("3");
    // p to display excerpt*/
    var selectedP = document.getElementById(id);
    console.log("4");
    /*req.open("GET", "../data/project.xml", true);
    req.send();
    console.log("5");
    req.onreadystatechangte = function(){
        // request finished/response ready, status ok
        if(req.readyState == 4 && req.status == 200){
            console.log("7");
            xmlSource = req.responseXML;
            // gets excerpts from XML
            var excerpts = xmlSource.getElementsByTagName("excerpt");
            // display excerpt in div
        selectedP.innerHTML = excerpts[excerptNum].innerHTML;
        }
    };*/
    alert(this.className + " " + id + " " + this.innerHTML);
}
