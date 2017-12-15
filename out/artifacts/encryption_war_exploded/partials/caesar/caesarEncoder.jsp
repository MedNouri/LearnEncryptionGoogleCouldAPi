<%--
 Created by IntelliJ IDEA.
 User: mohamed
 Date: 09/12/2017
 Time: 14:03
 To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../Header.jsp" %>
<script type="text/javascript">
    document.title = 'CESAR ENCODER';
</script>
<div class="wrapper">
    <div class="header header-filter"
         style="background-image: url('../../assets/img/bgcesar.png'); max-height: 200px"></div>


    <div class="main main-raised">
        <div class="section section-basic">
            <div class="container">
                <div class="row">
                    <h2 class="title"> Caesar Cipher Encoder</h2>
                    <p>Method in which each letter in the plaintext is replaced by a letter some fixed number of
                        positions down the alphabet. The method is named after Julius Caesar, who used it in his private
                        correspondence.</p>
                    <h5>Please fill out the following form</h5>
                </div>

                <div class="row">
                    <div id="loader" style="display: none" class="col-md-3 col-md-offset-5">
                        <div class="loader"></div>
                        <h5 class="center-block"><b>Please wait </b></h5>

                    </div>
                </div>
                <div id="error" style="display: none" class="row  section-thin section-tabs">

                    <div class="alert alert-danger">
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
                <div id="resultsec" style="display: none;margin-bottom: 250px" class="row  section-thin section-tabs">
                    <div id="alert" class="alert alert-success">
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

                    <table id="tab1" class="table table-hover">
                        <tr id="userinput">
                            <th>Input Text</th>
                        </tr>
                        <tr class="table-success" id="useroutput">
                            <th>Replaced with</th>
                        </tr>
                    </table>
                    <code>
                        How to encrypt using Caesar cipher?

                        <p>Encryption with Caesar code is a simple substitution (one letter replaces another). Caesar
                            code replaces each letter with an alphabet shift: a letter further in the alphabet.
                        </p>
                        <p> Example: Crypt DCODEX with a shift of 3.</p>
                        <p> To encrypt D, take the alphabet and look 3 letters after : G. So D is crypted with G.</p>
                        <p> To encrypt X, loop the alphabet: after X : Y, after Y : Z, after Z : A. So X is coded A.</p>
                    </code>

                </div>
                <div class="row" style="padding-top: 100px">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="card card-signup">
                            <h3 class="text-divider"> Caesar Cipher Encoder</h3>

                            <div class="content">

                                <form method="get" action="javascript:void(0);">
                                    <div   class="col-sm-12">
                                        <div  class="form-group label-floating ">
                                            <label   class="control-label">PLAIN TEXT</label>
                                            <input required  id="textinput" type="text" class="form-control">

                                        </div>
                                    </div>

                                    <div
                                           class="col-sm-12">
                                        <div class="form-group label-floating">
                                            <label   class="control-label">THE SHIFT:</label>
                                            <input required id="shift" type="number" class="form-control">

                                        </div>
                                    </div>

                                    <div    class="col-sm-12">
                                        <div class="form-group label-floating">
                                            <label   class="control-label">ALPHABET</label>
                                            <input required id="alphabet" type="text" value="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                                   class="form-control">

                                    </div>
                                    </div>
                                    <br/>
                                    <br/>
                                    <br/>
                                    <div class="footer text-center">
                                        <input type="submit" disabled value="Please wait" class="btn btn-primary"
                                               id="encodeB"/>
                                    </div>
                                </form>

                            </div>

                        </div>
                    </div>

                </div>
                 <div style="margin-top: 30px" class="row">
                    <p>Tool to decrypt/encrypt with Caesar. Caesar cipher (or Caesar code) is a shift cipher, one of the
                        most easy and most famous encryption systems. It uses the substitution of a letter by another
                        one further in the alphabet.

                    </p>
                </div>
            </div>
        </div>
    </div>
<%@include file="../../Footer.jsp" %>