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
    document.title = 'CESAR Crypt Analysis';
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
                </div>

                <div class="row">
                    <div id="loader" style="display: none" class="col-md-3 col-md-offset-5">
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
                    <table style="margin-left: 10px" id="tab1" class="table  ">
                        <tr>
                            <th>Result </th>
                        </tr>

                    </table>
                    <code>
                        Used Function

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
                                                <label class="control-label">PLAIN TEXT</label>
                                                <input id="textinput" type="text" required class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label">ALPHABET</label>
                                                <input id="alphabet" type="text" required value="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
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
                                           id="analysisB"/>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
<%@include file="../../Footer.jsp" %>