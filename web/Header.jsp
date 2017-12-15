<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="">
    <link rel="icon" type="image/png" href="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title></title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/assets/css/material-kit.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/assets/css/demo.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/assets/js/base.js" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet"/>




</head>
</head>

<body class="index-page">
<!-- Navbar -->
<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-index">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="${pageContext.request.contextPath}/index.jsp">
                <div class="logo-container">
                    <div class="logo">
                        <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="" data-placement="bottom" data-html="true">
                    </div>
                </div>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="navigation-index">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="${pageContext.request.contextPath}/index.jsp" target="_self">
                          HOME
                    </a>
                </li>
          <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">CAESAR CIPHER<b class="caret "></b></a>
                <ul class="dropdown-menu">
                    <li><a href="${pageContext.request.contextPath}/partials/caesar/cesarIntroduction.jsp">INTRODUCTION </a></li>
                    <li><a href="${pageContext.request.contextPath}/partials/caesar/caesarEncoder.jsp">CAESAR CIPHER ENCODER</a></li>
                    <li><a href="${pageContext.request.contextPath}/partials/caesar/cesarDecoder.jsp">CAESAR CIPHER DECODER</a></li>
                    <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath}/partials/caesar/caesarCryptanalysis.jsp">CAESAR CRYPTANALYSIS</a></li>
                </ul>
            </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Affine Cipher <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/partials/affine/affineIntroduction.jsp">INTRODUCTION</a></li>
                        <li><a href="${pageContext.request.contextPath}/partials/affine/affineEncoder.jsp">AFFINE CIPHER  ENCODER</a></li>
                        <li><a href="${pageContext.request.contextPath}/partials/affine/affineDecoder.jsp">AFFINE CIPHER DECODER</a></li>
                        <li><a href="${pageContext.request.contextPath}/partials/affine/affineCryptanalysis.jsp">AFFINE CRYPTANALYSIS</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">  VIGENERE cipher <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/partials/vigenere/vigenereIntroduction.jsp">INTRODUCTION</a></li>
                        <li><a href="${pageContext.request.contextPath}/partials/vigenere/vigenereEncder.jsp">VIGENERE CIPHER  ENCODER</a></li>
                        <li><a href="${pageContext.request.contextPath}/partials/vigenere/vigenereDecoder.jsp">VIGENERE  CIPHER DECODER</a></li>
                        <li class="${pageContext.request.contextPath}/divider"></li>
                        <li><a href="${pageContext.request.contextPath}/partials/vigenere/vigenereCryptanalysis.jsp">VIGENERE CRYPTANALYSIS</a></li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}">SEE MORE</a></li>
                    </ul>
                </li>
                <li>
                    <a href="" target="_self">
                       ABOUT
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="Change Lang" data-placement="bottom" href="${pageContext.request.contextPath}/partials/About/About.jsp" target="_blank" class="btn btn-white btn-simple btn-just-icon">
                        <i class="fa fa-info-circle"></i>
                    </a>
                </li>

            </ul>
        </div>
    </div>
</nav>
