/**
 * Created by mohamed on 07/12/2017.
 */
function enableButtons () {
    var btn = document.getElementById("encode");
    btn.disabled = false;
    btn.value = "ENCRYPT";
    btn.addEventListener('click',function () {


        var CODE_PLAIN_TEXT=null;
        CODE_PLAIN_TEXT=document.getElementById("CODE_PLAIN_TEXT").value;

        var KEY= null;
        KEY=  document.getElementById("KEY").value;

        var ALPHABET= null;

        ALPHABET= document.getElementById("ALPHABET").value;
        if ((valideText(CODE_PLAIN_TEXT,"TEXT_LABEL","TEXT_ICON","TEXT_RED"))&&(valideText(ALPHABET,"ALPHABET_LAbEL","ALPHABET_ICON","ALPHABET_RED")) && (validateAlhabet(KEY,"KEY_LABEL","KEY_ICON","KEY_RED")) ){
            vigenereCipherEncoder(KEY,CODE_PLAIN_TEXT);
        }else {
            console.log("Input Error");
        }
    });

    var btn2 = document.getElementById("Decode");
    btn2.disabled = false;
    btn2.value = "DECRYPT"
    btn2.addEventListener('click',function () {

        var CODE_PLAIN_TEXT=null;
        CODE_PLAIN_TEXT=document.getElementById("CODE_PLAIN_TEXT2").value;

        var KEY= null;
        KEY=  document.getElementById("KEY2").value;

        var ALPHABET= null;

        ALPHABET= document.getElementById("ALPHABET2").value;
        if ((valideText(CODE_PLAIN_TEXT,"TEXT_LABEL2","TEXT_ICON2","TEXT_RED2"))&&(valideText(ALPHABET,"ALPHABET_LAbEL2","ALPHABET_ICON2","ALPHABET_RED2")) && (validateAlhabet(KEY,"KEY_LABEL2","KEY_ICON2","KEY_RED2")) ){
            vigenereCipherDecode(KEY,CODE_PLAIN_TEXT);
        }else {
            console.log("Input Error");
        }
    });
}


function vigenereCipherDecode(key,CODE_PLAIN_TEXT) {
    var request = gapi.client.encryptionApi.playfairCipherDecoder(
        {'key':key,'input':CODE_PLAIN_TEXT});
    request.execute( updateUidecoder);

}

function vigenereCipherEncoder (key,CODE_PLAIN_TEXT) {
    var request = gapi.client.encryptionApi.playfairCipherEncoder(
        {'key':key,'input':CODE_PLAIN_TEXT});
    request.execute( updateUiEncoder);

}


function updateUiEncoder(response) {
    document.getElementById("result12").innerHTML="";
    document.getElementById("ResultSEC2").setAttribute('style','display:;');
    if (response != null){
        document.getElementById("result12").innerHTML="Result :"+response.message;
        console.log(response.message);

    }
    else {
        document.getElementById("result12").innerHTML="Invalide Error";
    }

}



function updateUidecoder(response) {
    document.getElementById("result1").innerHTML="";
    document.getElementById("ResultSEC").setAttribute('style','display:;');
    if (response != null){
        document.getElementById("result1").innerHTML="Result :"+response.message;
        console.log(response.message);

    }
    else {
        document.getElementById("result1").innerHTML="Invalide Error";
    }

}
