<%--
 Created by IntelliJ IDEA.
 User: mohamed
 Date: 09/12/2017
 Time: 14:03
 To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="../../assets/js/CaesarcipherApi.js"></script>

<%@include file="../../Header.jsp" %>
<script type="text/javascript">
    document.title = 'CESAR DECODER';
</script>
<div class="wrapper">
    <div class="header header-filter"
         style="background-image: url('../../assets/img/bgcesar.png'); max-height: 200px"></div>


    <div class="main main-raised">
        <div class="section section-basic">
            <div class="container">
                <div class="row">
                    <h2 class="title"> Caesar Cipher Decoder</h2>
                    <p>Method in which each letter in the plaintext is replaced by a letter some fixed number of
                        positions down the alphabet. The method is named after Julius Caesar, who used it in his private
                        correspondence.</p>
                </div>

                <div class="row">
                    <div class="col-md-3 col-md-offset-5" id="loader" style="display: none">
                        <div  class="loader"></div>
                        <p>Please wait...</p>
                    </div>
                </div>
                <div id="error" style="display: none" class="row  section-thin section-tabs">

                    <div     class="alert alert-danger">
                        <div class="container-fluid">
                            <div class="alert-icon">
                                <i class="material-icons">error_outline</i>
                            </div>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true"><i class="material-icons">clear</i></span>
                            </button>
                            <b>Error Alert:</b>
                            <h4 id="errorR"></h4>
                        </div>
                    </div>
                </div>
                <div id="resultsec" style="display: none" class="row  section-thin section-tabs">
                    <div class="alert alert-success">
                        <div class="container-fluid">
                            <div class="alert-icon">
                                <i class="material-icons">check</i>
                            </div>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true"><i class="material-icons">clear</i></span>
                            </button>
                            <b>Success Result :</b>
                            <h4 id="result"></h4>
                        </div>
                    </div>
                    <table id="tab1" class="table  table-hover">
                        <tr id="userinput">
                            <th>Input Text</th>

                        </tr>
                        <tr id="useroutput">
                            <th>Replaced with</th>

                        </tr>
                    </table>
                    <code>
                        How to decrypt Caesar cipher?

                        <p>Caesar code decryption replaces a letter another with an inverse alphabet shift : a previous letter in the alphabet.
                        </p>

                       <p> Example: Decrypt GFRGHA with a shift of 3.</p>
                        <p>   To decrypt G, take the alphabet and look 3 letters before : D. So G is decrypted with D.</p>
                        <p>  To decrypt X, loop the alphabet: before A: Z, before Z: Y, before Y: X. So A is decrypted X.
                        GFRGHA is decrypted DCODEX.</p>
                    </code>

                </div>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>

                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="card card-signup">
                            <form class="form" method="" action="">

                                <h3 class="text-divider"> Caesar Cipher Encoder</h3>
                                <div class="content">

                                    <form method="get" action="javascript:void(0);">
                                        <div class="col-sm-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label">PLAIN CODE</label>
                                                <input id="textinput" type="text" required class="form-control">
                                            </div>
                                        </div>


                                        <div class="col-sm-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label">THE SHIFT:</label>
                                                <input id="shift" type="number" required class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label">ALPHABET</label>
                                                <input required id="alphabet" type="text" value="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                                       class="form-control">
                                            </div>
                                        </div>

                                    </form>

                                    <br/>
                                    <br/>
                                    <br/>


                                </div>
                                <div class="footer text-center">
                                    <input type="submit" disabled value="Plesae wait" class="btn btn-primary"
                                           id="decodeB"/>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>


<%@include file="../../Footer.jsp" %>