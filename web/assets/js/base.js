/**
 * @fileoverview
 * Provides methods for the Hello Endpoints sample UI and interaction with the
 * Hello Endpoints API.
 *
 * @author danielholevoet@google.com (Dan Holevoet)
 */

/** google global namespace for Google projects. */
var google = google || {};

/** devrel namespace for Google Developer Relations projects. */
google.encoder =  google.encoder || {};

/** samples namespace for DevRel sample code. */
google.encoder.learn = google.encoder.learn || {};

/** hello namespace for this sample. */
 google.encoder.learn.crypto =  google.encoder.learn.crypto || {};

/**
 * Client ID of the application (from the APIs Console).
 * @type {string}
 */
 google.encoder.learn.crypto.appCLIENT_ID =
    'replace this with your web application client ID';

/**
 * Scopes used by the application.
 * @type {string}
 */
 google.encoder.learn.crypto.appSCOPES =
    'https://www.googleapis.com/auth/userinfo.email';

/**
 * Whether or not the user is signed in.
 * @type {boolean}
 */
google.encoder.learn.crypto.appsignedIn = false;

google.encoder.learn.crypto.setvalidinput = function (color,lable,span) {
     document.getElementsByClassName(color).className +="has-success";
     document.getElementsByClassName(lable).innerHTML ="Success input";
     document.getElementsByClassName(span).innerHTML ="done";

}
google.encoder.learn.crypto.setinvalidinput = function (color,lable,span) {
    document.getElementsByClassName(color).className +="has-error";
    document.getElementsByClassName(lable).innerHTML ="Invalid input";
    document.getElementsByClassName(span).innerHTML ="clear";

}


google.encoder.learn.crypto.appprintErroor = function (error) {
    var elem = document.getElementById("myDiv");
    elem.parentNode.removeChild(elem);
}

 google.encoder.learn.crypto.appprintError = function (error) {
    document.getElementById("error").setAttribute('style', 'display:;');
    document.getElementById("errorR").innerHTML = error.code;
    document.getElementById("resultsec").setAttribute('style', 'display:none;');
    document.getElementById("loader").setAttribute('style', 'display:none;');
}


function generatetable(input, table, row) {
    var table = document.getElementById(table);
    var row = document.getElementById(row);

    for (var i = 0; i < input.length; i++) {
        var col = document.createElement('td');
        col.innerHTML += input.charAt(i);
        row.appendChild(col);
    }
}
/**
 * Prints a greeting to the greeting log.
 * param {Object} greeting Greeting to print.
 */
 google.encoder.learn.crypto.appprint = function (greeting) {
    document.getElementById("loader").setAttribute('style', 'display:none;');
    document.getElementById('result').innerHTML = greeting.message;
    generatetable(greeting.message,"tab1","userinput");
    generatetable(document.getElementById("textinput").value, "tab1", "useroutput");
    document.getElementById("resultsec").setAttribute('style', 'display:;');
     window.scrollTo(0, 5);

};
 google.encoder.learn.crypto.appprintEROR = function () {
    document.getElementById("loader").setAttribute('style', 'display:none;');
    document.getElementById("alert").setAttribute('style', 'display:;');
    document.getElementById('errorR').innerHTML = "ERROR PLEASE CHECK YOUR INPUT !" + greeting.code;
     window.scrollTo(0, 5);
};


 google.encoder.learn.crypto.appprintANALYSIS = function (greeting) {
    document.getElementById("loader").setAttribute('style', 'display:none;');
    document.getElementById('result').innerHTML = " Using Brute force attack ";
    var res = greeting.message.split("-");
    var row = document.getElementById("userinput");
    var tab = document.getElementById("tab1");
    for (i = 0; i < res.length; i++) {
        var row = document.createElement('tr');
        row.innerHTML += res[i];
        tab.appendChild(row);

    }
    document.getElementById("resultsec").setAttribute('style', 'display:;');


};


/**
 * Gets a numbered greeting via the API.
 * @param {string} id ID of the greeting.
 */

/**


 //a  file need it to call the Api of Caesar cipher


 /**
 * Gets a numbered greeting via the API.
 * @param {string} id ID of the greeting.
 */
 google.encoder.learn.crypto.appgetDecoder = function () {
     document.getElementById("loader").setAttribute('style', 'display:;') ;
     gapi.client.learnCryptographyEndpoints.caesarcipherDecoder({
         'alphabet': document.getElementById("alphabet").value
         , 'plaincode': document.getElementById("textinput").value, "shiftKey": document.getElementById("shift").value
     }).execute
     (
         function (resp) {
             if (!resp.code) {
                 google.encoder.learn.crypto.appprint(resp);
             } else {
                 google.encoder.learn.crypto.appprintError(resp);
             }
         });

 }


/**
 * Gets a numbered greeting via the API.
 * @param {string} id ID of the greeting.
 */
 google.encoder.learn.crypto.appgetEncoder = function () {
    document.getElementById("loader").setAttribute('style', 'display:;');

    gapi.client.learnCryptographyEndpoints.caesarcipherEncoder({
        'alphabet': document.getElementById("alphabet").value
        , 'plainText': document.getElementById("textinput").value, "shiftKey": document.getElementById("shift").value
    }).execute
    (
        function (resp) {
            if (!resp.code) {
                 google.encoder.learn.crypto.appprint(resp);

            } else {
                 google.encoder.learn.crypto.appprintError(resp);

            }
        });
};
/**
 * Gets a numbered greeting via the API.
 * @param {string} id ID of the greeting.
 */
 google.encoder.learn.crypto.appgetCRYPTANALYSIS = function () {
    document.getElementById("loader").setAttribute('style', 'display:;');

    gapi.client.learnCryptographyEndpoints.caesarcipherCRYPTANALYSIS({
        'alphabet': document.getElementById("alphabet").value
        , 'plainText': document.getElementById("textinput").value
    }).execute
    (
        function (resp) {
            if (!resp.code) {
                 google.encoder.learn.crypto.appprintANALYSIS(resp);
            } else {
                 google.encoder.learn.crypto.appprintError(resp);
            }
        });
};




google.encoder.learn.crypto.affineecipherAnalysis = function () {
    document.getElementById("loader").setAttribute('style', 'display:;');

    gapi.client.learnCryptographyEndpoints.affineecipherAnalysis({
        'alphabet': document.getElementById("alphabet").value
        , 'input': document.getElementById("textinput").value
    }).execute
    (
        function (resp) {
            if (!resp.code) {
                google.encoder.learn.crypto.appprintANALYSIS(resp);
            } else {
                google.encoder.learn.crypto.appprintError(resp);
            }
        });
};


google.encoder.learn.crypto.appgetAffineDecode = function () {
    document.getElementById("loader").setAttribute('style', 'display:;');

    gapi.client.learnCryptographyEndpoints.affineCipherDecoder({
        'firstKey': document.getElementById("firstKey").value,
        'secondkey': document.getElementById("secondkey").value,
        'alphabet': document.getElementById("alphabet").value
        , 'input': document.getElementById("textinput").value
    }).execute
    (
        function (resp) {
            if (!resp.code) {
                 google.encoder.learn.crypto.appprint(resp);
            } else {
                 google.encoder.learn.crypto.appprintError(resp);
            }
        });
};


 google.encoder.learn.crypto.appgetVigenereEncoder = function () {
    document.getElementById("loader").setAttribute('style', 'display:;');
    gapi.client.learnCryptographyEndpoints.vigenerecipherEncoder({
        'alphabet': document.getElementById("alphabet").value
        , 'key': document.getElementById("shift").value,
        'input': document.getElementById("textinput").value
    }).execute
    (
        function (resp) {
            if (!resp.code) {
                 google.encoder.learn.crypto.appprint(resp);
            } else {
                 google.encoder.learn.crypto.appprintError(resp);
            }
        });
};

 google.encoder.learn.crypto.appgetVigenereDecode = function () {
    document.getElementById("loader").setAttribute('style', 'display:;');
    gapi.client.learnCryptographyEndpoints.vigenerecipherDecoder({
        'alphabet': document.getElementById("alphabet").value
        , 'key': document.getElementById("shift").value,
        'input': document.getElementById("textinput").value
    }).execute
    (
        function (resp) {
            if (!resp.code) {
                 google.encoder.learn.crypto.appprint(resp);
            } else {
                 google.encoder.learn.crypto.appprintError(resp);
            }
        });
};

/**
 * Gets a numbered greeting via the API.
 * @param {string} id ID of the greeting.
 */
 google.encoder.learn.crypto.appgetAffine = function () {
    document.getElementById("loader").setAttribute('style', 'display:;');

    gapi.client.learnCryptographyEndpoints.affineCipherEncoder({
        'firstKey': document.getElementById("firstKey").value,
        'secondkey': document.getElementById("secondkey").value,
        'alphabet': document.getElementById("alphabet").value
        , 'input': document.getElementById("textinput").value
    }).execute
    (
        function (resp) {
            if (!resp.code) {
                 google.encoder.learn.crypto.appprint(resp);
            } else {
                 google.encoder.learn.crypto.appprintError(resp);
            }
        });
};




/**
 * Lists greetings via the API.
 */
 google.encoder.learn.crypto.applistGreeting = function () {
    gapi.client.helloworld.greetings.listGreeting().execute(
        function (resp) {
            if (!resp.code) {
                resp.items = resp.items || [];
                for (var i = 0; i < resp.items.length; i++) {
                     google.encoder.learn.crypto.appprint(resp.items[i]);
                }
            }
        });
};



function isNormalInteger(str) {
    var n = Math.floor(Number(str));
    return String(n) === str && n >= 0;
}
/**
 * Enables the button callbacks in the UI.
 */
 google.encoder.learn.crypto.appenableButtons = function () {


    var btnE = document.getElementById("encodeB");
    var btnD = document.getElementById("decodeB");
    var analysisB = document.getElementById("analysisB");
    var affineE = document.getElementById("affineE");
    var affineD = document.getElementById("affineD");
    var analysisA = document.getElementById("affanalysisB");

    var encodeV = document.getElementById("encodeV");
    var decodeV = document.getElementById("decodeV");

    if (btnE) {
        btnE.disabled = false;
        btnE.value = "EnCode";
        btnE.addEventListener('click', function () {
             google.encoder.learn.crypto.appgetEncoder();
        });
    }
    if (btnD) {

        btnD.disabled = false;
        btnD.value = "DeCode";
        btnD.addEventListener('click', function () {
             google.encoder.learn.crypto.appgetDecoder();
        });
    }
    if (analysisB) {
        analysisB.disabled = false;
        analysisB.value = "Try ANALYSIS";
        analysisB.addEventListener('click', function () {
             google.encoder.learn.crypto.appgetCRYPTANALYSIS();
        });

    }
    if (affineE) {
        affineE.disabled = false;
        affineE.value = "AFFINE ENCODER";
        affineE.addEventListener('click', function () {
             google.encoder.learn.crypto.appgetAffine();
        });

    }
    if (affineD) {
        affineD.disabled = false;
        affineD.value = "AFFINE DECODER";
        affineD.addEventListener('click', function () {
             google.encoder.learn.crypto.appgetAffineDecode();
        });
    }

     if (analysisA) {
         analysisA.disabled = false;
         analysisA.value = "Try ANALYSIS";
         analysisA.addEventListener('click', function () {
             google.encoder.learn.crypto.affineecipherAnalysis ();
         });
     }

     if (encodeV) {
        encodeV.disabled = false;
        encodeV.value = "VIGENERE ENCODER";
        encodeV.addEventListener('click', function () {
             google.encoder.learn.crypto.appgetVigenereEncoder();
        });
    }

    if (decodeV) {
        decodeV.disabled = false;
        decodeV.value = "VIGENERE ENCODER";
        decodeV.addEventListener('click', function () {
             google.encoder.learn.crypto.appgetVigenereDecode();
        });
    }


};

/**
 * Initializes the application.
 * @param {string} apiRoot Root of the API's path.
 */
 google.encoder.learn.crypto.init = function (apiRoot) {
    // Loads the OAuth and LearnCryptographyEndpointsAPIs asynchronously
     // when they have completed.
     var apisToLoad;
    var callback = function () {
        if (--apisToLoad == 0) {

             google.encoder.learn.crypto.appenableButtons();


        }
    }

    apisToLoad = 1; // must match number of calls to gapi.client.load()
    gapi.client.load('learnCryptographyEndpoints', 'v1', callback, apiRoot);

};
