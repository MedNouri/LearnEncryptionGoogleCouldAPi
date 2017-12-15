function init() {

    // You need to pass the root path when you load your API
    // otherwise calls to execute the API run into a problem

    // rootpath will evaulate to either of these, depending on where the app is running:
    // //localhost:8080/_ah/api
    // //your-app-id/_ah/api

    var rootpath = "//" + window.location.host + "/_ah/api";

    // Load the helloworldendpoints API
    // If loading completes successfully, call loadCallback function
    gapi.client.load('encryptionApi', 'v1', loadCallback, rootpath);
}
function loadCallback () {

    enableButtons ();
}

function  validateAlhabet(ALPHABET,label,showerror,texterror){ {

}
    if(!allLetter(ALPHABET)){
        var label= document.getElementById(label);
        label.innerHTML="ONLY LETTERS ARE ALLOWED";
        var show_error1=document.getElementById(showerror);
        var text_error1=document.getElementById(texterror);
        show_error1.innerHTML("clear");
        text_error1.classList.add("has-error");
        return false;
    }else {
        var text_error=document.getElementById(texterror);
        text_error.classList.add("has-success");
        var show_error=document.getElementById(showerror);
        show_error.innerHTML="done";
        return true;
    }

}

function  validString(CODE_PLAIN_TEXT,label,showerror,texterror) {

    if (!allLetter(CODE_PLAIN_TEXT)){
        var label= document.getElementById(label);
        label.innerHTML="ONLY LETTERS ARE ALLOWED";
        var show_error=document.getElementById(showerror);
        var Red_error=document.getElementById(texterror);
        show_error.innerHTML="clear";
        Red_error.classList.add("has-error");
       return false;
    }else {

        var Red_error=document.getElementById(texterror);
        Red_error.classList.add("has-success");
        var show_error=document.getElementById(showerror);
        show_error.innerHTML="done";
        return true;
    }

}

function valideNumber(SHIFT,label,REDLine,Icon) {

    if ((!isANumber(SHIFT))){
        var label = document.getElementById(label);
        label.innerHTML = "ONLY NUMBERS ARE ALLOWED";
        var REDLine = document.getElementById(REDLine);
        var icon= document.getElementById(Icon);
        icon.innerHTML="clear";
        REDLine.classList.add("has-error");
        return false;
    }else {

        var text_error=document.getElementById(REDLine);
        text_error.classList.add("has-success");
        var icon=document.getElementById(Icon);
        icon.innerHTML="done";
        return true;
    }

}


function isANumber(str1){
    if(isNaN(str1)){
        return false
    }else{
        return true
    }
}


function allLetter(inputtxt)
{
    var letters = /^[A-Za-z]+$/;
    if(inputtxt.match(letters))
    {
        return true;
    }
    else
    {

        return false;
    }
}


