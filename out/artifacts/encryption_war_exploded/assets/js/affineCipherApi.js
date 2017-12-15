/**
 * Created by mohamed on 07/12/2017.
 */

function enableButtons() {
    var btn = document.getElementById("encode");
    btn.disabled = false;
    btn.value = "Encrypt"
    btn.addEventListener('click',function () {
       var CODE_PLAIN_TEXT=null;
       CODE_PLAIN_TEXT=document.getElementById("PLAIN_TEXT").value;
       var ALPHABET= null
       ALPHABET= document.getElementById("ALPHABET").value;
       var  A=document.getElementById("ACOEFFICIENT");
       var  ACOEFFICIENT = A.options[A.selectedIndex].value;
       var  B=document.getElementById("BCOEFFICIENT");
       var  BCOEFFICIENT = B.options[B.selectedIndex].value;

       if ((valideText(CODE_PLAIN_TEXT,"TEXT_LAbEL","show_error","text_Red"))&&(validateAlhabet(ALPHABET,"ALPHABET_LAbEL","show_iconA","ALPHABET_Red"))){
           affineCipherEncoder(ACOEFFICIENT,BCOEFFICIENT,ALPHABET,CODE_PLAIN_TEXT);
       }else {
           console.error("Input Error");
       }

   });

    var btn = document.getElementById("decode");
    btn.disabled = false;
    btn.value = "Decrypt"
    btn.addEventListener('click',function () {
        var CODE_PLAIN_TEXT=null;
        CODE_PLAIN_TEXT=document.getElementById("PLAIN_Code").value;
        var ALPHABET= null
        ALPHABET= document.getElementById("ALPHABET2").value;
        var  A=document.getElementById("ACOEFFICIENT2");
        var  ACOEFFICIENT = A.options[A.selectedIndex].value;
        var  B=document.getElementById("BCOEFFICIENT2");
        var  BCOEFFICIENT = B.options[B.selectedIndex].value;

        if ((valideText(CODE_PLAIN_TEXT,"TEXT_LAbEL2","icon_error2","TXTE_Red2"))&&(validateAlhabet(ALPHABET,"ALPHABET_LAbEL2","show_iconA2","ALPHABET_Red2"))){
            affineCipherDecoder(ACOEFFICIENT,BCOEFFICIENT,ALPHABET,CODE_PLAIN_TEXT);
        }else {
            console.error("Input Error");
        }

    });

}


function affineCipherEncoder (firstkey,secondkey,alphabet,CODE_PLAIN_TEXT) {
    var request = gapi.client.encryptionApi.affineCipherEncoder(
        {'firstkey':firstkey,'secondkey':secondkey,'alphabet':alphabet,'input':CODE_PLAIN_TEXT});

    request.execute(updateUiEncoder);

}
function affineCipherDecoder (firstkey,secondkey,alphabet,CODE_PLAIN_TEXT) {
    var request = gapi.client.encryptionApi.affineCipherDecoder(
        {'firstkey':firstkey,'secondkey':secondkey,'alphabet':alphabet,'input':CODE_PLAIN_TEXT});

    request.execute(updateUiDecoder);

}


function updateUiEncoder(response) {
    document.getElementById("result").innerHTML="";
    document.getElementById("soultion").setAttribute('style','display:;');
    if (response != null){
        document.getElementById("result").innerHTML="Result :"+response.message;
        console.log(response.message);
        generatetable(document.getElementById("PLAIN_TEXT").value,"tab1","char");
        generatetable(response.message.toString(),"tab1","replace");
    }
    else {
        document.getElementById("result2").innerHTML="Invalide Error";
    }

}


function updateUiDecoder(response) {
    document.getElementById("result").innerHTML="";
    document.getElementById("soultion2").setAttribute('style','display:;');
    if (response != null){
        document.getElementById("result2").innerHTML="Result :"+response.message;
        console.log(response.message);
        generatetable(document.getElementById("PLAIN_Code").value,"table2","char2");
        generatetable(response.message.toString(),"table2","replace2");
    }
    else {
        document.getElementById("result2").innerHTML="Invalide Error";
    }

}