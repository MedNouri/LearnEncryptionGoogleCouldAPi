<%--
  Created by IntelliJ IDEA.
  User: mohamed
  Date: 09/12/2017
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="Header.jsp" %>
<script type="text/javascript">
    document.title = 'HOME';

</script>
<!-- End Navbar -->
<div class="wrapper">
    <div class="header header-filter"
        style="background-image: url('assets/img/background.jpg')" >
        <div class="container">
            <div class="row">

                <div class="brand">
                    <div id="text-carousel" class="carousel slide" data-ride="carousel" >
                        <!-- Wrapper for slides -->
                        <div class="row">
                            <div class="col-xs-offset-3 col-xs-6">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <div class="carousel-content">
                                            <div>
                                                <h2><b> Welcome </b></h2>
                                                <h3>To Learn cryptography.com</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h2><b>Let's Learn !</b></h2>
                                                <h3>learn the basics of cryptography.</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="carousel-content">
                                            <div>
                                                <h2><b>Learn online  !</b></h2>
                                                <h3>  A Free resource to help peoples understand cryptographic</h3>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <!-- Controls -->
                        <a class="left carousel-control" href="#text-carousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                        <a class="right carousel-control" href="#text-carousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>

                    </div>
                </div>

            </div>

        </div>
    </div>

    <div class="main main-raised">
        <div class="section section-basic">
            <div class="container">
                <div class="row">
                    <div>
                        <h2 class="title"> What is Cryptography?</h2>
                        <p>
                            <b>Cryptography </b>is the study of techniques used to communicate and store information
                            securely
                            without being intercepted or accessible by third parties. Cryptography is a broad field with
                            applications in many critical areas of our lives.</p>
                        <p>
                            <b>Learn Cryptography</b> is a resource to helping people understand how and why the
                            cryptographic systems they use everyday (such as banking transactions, website logins, and
                            more)
                            work to secure their communications and protect their privacy</p>
                    </div>


                    <p>Cryptography is a method of storing and transmitting data in a particular form so that only those
                        for whom it is intended can read and process it.

                        Cryptography is closely related to the disciplines of cryptology and cryptanalysis. Cryptography
                        includes techniques such as microdots, merging words with images, and other ways to hide
                        information in storage or transit. However, in today's computer-centric world, cryptography is
                        most often associated with scrambling plaintext (ordinary text, sometimes referred to as
                        cleartext) into ciphertext (a process called encryption), then back again (known as decryption).
                        Individuals who practice this field are known as cryptographers.

                    <h4>Modern cryptography concerns itself with the following four objectives:</h4>
                    </p>

                    <div class="center-block text-center" style="margin-top: 50px;margin-bottom: 50px">
                        <div class="col-lg-3"><i style=" font-size: 44px;" class="material-icons">do_not_disturb_off</i>
                            <h5>Confidentiality</h5></div>
                        <div class="col-lg-3"><i style=" font-size: 44px;"
                                                 class="material-icons">notifications_active</i><h5>Integrity</h5></div>
                        <div class="col-lg-3"><i style=" font-size: 44px;" class="material-icons">bug_report</i><h5>
                            Non-repudiation</h5></div>
                        <div class="col-lg-3"><i style=" font-size: 44px;" class="material-icons">security</i><h5>
                            Authentication </h5></div>
                    </div>
                    </p>

                    <p>Procedures and protocols that meet some or all of the above criteria are known as cryptosystems.
                        Cryptosystems are often thought to refer only to mathematical procedures and computer programs;
                        however, they also include the regulation of human behavior, such as choosing hard-to-guess
                        passwords, logging off unused systems, and not discussing sensitive procedures with
                        outsiders.</p>
                    <p>The word is derived from the Greek kryptos, meaning hidden. The origin of cryptography is usually
                        dated from about 2000 BC, with the Egyptian practice of hieroglyphics. These consisted of
                        complex pictograms, the full meaning of which was only known to an elite few. The first known
                        use of a modern cipher was by Julius Caesar (100 BC to 44 BC), who did not trust his messengers
                        when communicating with his governors and officers. For this reason, he created a system in
                        which each character in his messages was replaced by a character three positions ahead of it in
                        the Roman alphabet.</p>

                    <p>In recent times, cryptography has turned into a battleground of some of the world's best
                        mathematicians and computer scientists. The ability to securely store and transfer sensitive
                        information has proved a critical factor in success in war and business.

                        Because governments do not wish certain entities in and out of their countries to have access to
                        ways to receive and send hidden information that may be a threat to national interests,
                        cryptography has been subject to various restrictions in many countries, ranging from
                        limitations of the usage and export of software to the public dissemination of mathematical
                        concepts that could be used to develop cryptosystems. However, the Internet has allowed the
                        spread of powerful programs and, more importantly, the underlying techniques of cryptography, so
                        that today many of the most advanced cryptosystems and ideas are now in the public domain.s</p>

                    <div style="float: right !important;"><a href="https://www.google.fr">
                        <button class=" btn btn-primary btn-sm float-right"> Read More</button>
                    </a></div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- End Main Content -->
<%@include file="Footer.jsp" %>
<script>
    $('.carousel').carousel({
        interval: 8000
    })
</script>