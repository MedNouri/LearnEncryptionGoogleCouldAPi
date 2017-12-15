<%--
  Created by IntelliJ IDEA.
  User: mohamed
  Date: 09/12/2017
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../Header.jsp" %>

<div class="wrapper">
    <div class="header header-filter"
         style="background-image: url('../../assets/img/bgcesar.png'); max-height: 200px"></div>


    <div class="main main-raised">
        <div class="section section-basic">
            <div class="container">
                <div class="title">
                    <h2 class="title">Affine Cipher</h2>
                    <p>The affine cipher is a type of monoalphabetic substitution cipher, wherein each letter in an
                        alphabet is mapped to its numeric equivalent, encrypted using a simple mathematical function,
                        and converted back to a letter. The formula used means that each letter encrypts to one other
                        letter, and back again, meaning the cipher is essentially a standard substitution cipher with a
                        rule governing which letter goes to which. As such, it has the weaknesses of all substitution
                        ciphers. Each letter is enciphered with the function (ax + b) mod 26, where b is the magnitude
                        of the shift.</p></div>
                <div class="title">
                    <h2>Description</h2>
                    <p>In the affine cipher the letters of an alphabet of size m are first mapped to the integers in the range 0 … m − 1. It then uses modular arithmetic to transform the integer that each plaintext letter corresponds to into another integer that correspond to a ciphertext letter. The encryption function for a single letter is.</p>

                    <img class="center-block img-responsive " src="../../assets/img/affineCodeing.svg">
                    <p>where modulus m is the size of the alphabet and a and b are the key of the cipher. The value a must be chosen such that a and m are coprime. The decryption function is</p>
                    <img class="center-block img-responsive" src="../../assets/img/affineDeodeing.svg">
                </div>

                <h2>Weaknesses</h2>
                <p>Since the affine cipher is still a monoalphabetic substitution cipher, it inherits the weaknesses of that class of ciphers. The Caesar cipher is an Affine cipher with a = 1 since the encrypting function simply reduces to a linear shift.

                    Considering the specific case of encrypting messages in English (i.e. m = 26), there are a total of 286 non-trivial affine ciphers, not counting the 26 trivial Caesar ciphers. This number comes from the fact there are 12 numbers that are coprime with 26 that are less than 26 (these are the possible values of a). Each value of a can have 26 different addition shifts (the b value); therefore, there are 12 × 26 or 312 possible keys. This lack of variety renders the system as highly insecure when considered in light of Kerckhoffs' Principle.

                    The cipher's primary weakness comes from the fact that if the cryptanalyst can discover (by means of frequency analysis, brute force, guessing or otherwise) the plaintext of two ciphertext characters then the key can be obtained by solving a simultaneous equation. Since we know a and m are relatively prime this can be used to rapidly discard many "false" keys in an automated system.

                    The same type of transformation used in affine ciphers is used in linear congruential generators, a type of pseudorandom number generator. This generator is not a cryptographically secure pseudorandom number generator for the same reason that the affine cipher is not secure.</p>

                <div >
                    <h2 class="title">Cryptanalysis</h2>
                    <p>Cryptanalysis is the art of breaking codes and ciphers. The Caesar cipher is probably the easiest
                        of all ciphers to break. Since the shift has to be a number between 1 and 25, (0 or 26 would
                        result in an unchanged plaintext) we can simply try each possibility and see which one results
                        in a piece of readable text. If you happen to know what a piece of the ciphertext is, or you can
                        guess a piece, then this will allow you to immediately find the key.

                        If this is not possible, a more systematic approach is to calculate the frequency distribution
                        of the letters in the cipher text. This consists of counting how many times each letter appears.
                        Natural English text has a very distinct distribution that can be used help crack codes. This
                        distribution is as follows</p>
                    <img class="center-block img-responsive " src="../../assets/img/letter_frequencies_2.png">
                    <p>This means that the letter e is the most common, and appears almost 13% of the time, whereas z
                        appears far less than 1 percent of time. Application of the Caesar cipher does not change these
                        letter frequencies, it merely shifts them along a bit (for a shift of 1, the most frequent
                        ciphertext letter becomes f). A cryptanalyst just has to find the shift that causes the
                        ciphertext frequencies to match up closely with the natural English frequencies, then decrypt
                        the text using that shift. This method can be used to easily break Caesar ciphers by hand.</p>
                </div>

                <div>
                    <h4>References</h4>
                    <p>
                        Wikipedia has a good description of the encryption/decryption process, history and cryptanalysis
                        of this algorithm
                        Simon Singh's 'The Code Book' is an excellent introduction to ciphers and codes, and includes a
                        section on caesar ciphers.
                        Singh, Simon (2000). The Code Book: The Science of Secrecy from Ancient Egypt to Quantum
                        Cryptography. ISBN 0-385-49532-3.</p>

                </div>
            </div>
        </div>
    </div>
<%@include file="../../Footer.jsp" %>