/**
 * Created by mohamed on 07/12/2017.
 */


function enableButtons(){
    var btn = document.getElementById("encode");
    btn.disabled = false;
    btn.value = "ENCRYPT";
 btn.addEventListener('click',function () {

 })



    var btn2 = document.getElementById("decode");
    btn2.disabled = false;
    btn2.value = "DECRYPT";
    btn2.addEventListener('click',function () {

    });

}

function playfairCipherDecoder (key,CODE_PLAIN_TEXT) {
    var request = gapi.client.encryptionApi.playfairCipherDecoder(
        {'alphabet':ALPHABET,'plainText':CODE_PLAIN_TEXT,'Key':key});
    request.execute( updateUiEncoder);

}
