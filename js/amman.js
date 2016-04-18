window.addEventListener('DOMContentLoaded', init, false);

function init(){
    var clickables = document.getElementsByClassName("clickable");
    for (var i = 0; i < clickables.length; i++){
        clickables[i].addEventListener('click', sendRequest, false)
    }
}

function sendRequest(){
    var id = this.className.split(' ')[1];
    var excerptNum = this.innerHTML;
    var word = this.nextSibling.textContent;
    console.log(word);
    
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
            var direction = document.createAttribute("dir");
            direction.value = "rtl";
            selectedP.setAttributeNode(direction);
            // right align
            var align = document.createAttribute("style");
            align.value = "text-align:right";
            selectedP.setAttributeNode(align);
            // highlight word
            
            var spanWord = "<span style='background-color:red'>" + word + "</span>";
            var excerptText = excerpts[excerptNum - 1].textContent;
            excerptText = excerptText.slice(0, excerptText.indexOf(word)) + spanWord + excerptText.slice(excerptText.indexOf(word) + word.length);
            // display excerpt in p
            selectedP.innerHTML = excerptText;
        }
    };
    req.open("GET", "../data/project.xml", true);
    req.send();
}
