<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../Header.jsp" %>
<script type="text/javascript">
    document.title = 'INTRODUCTION TO CESAR';
</script>
<div class="wrapper">
    <div class="header header-filter"  style="background-image: url('../../assets/img/bgcesar.png'); max-height: 200px"></div>
    <div class="main main-raised">
        <div class="section section-basic">
            <div class="container">
                <div class="row">
                    <h2 class="title">Introduction To Caesar Cipher</h2>
                    <p><b>The Caesar cipher </b>is one of the earliest known and simplest ciphers. It is a type of substitution
                        cipher in which each letter in the plaintext is 'shifted' a certain number of places down the
                        alphabet. For example, with a shift of 1, A would be replaced by B, B would become C, and so on.
                        The method is named after Julius Caesar, who apparently used it to communicate with his
                        generals.</p>
                    <p><b>For each </b> letter of the alphabet, you would take its position in the alphabet, say 3 for the
                        letter 'C', and shift it by the key number. If we had a key of +3, that 'C' would be shifted
                        down to an 'F' - and that same process would be applied to every letter in the plaintext.</p>
                    <p>In this way, a message that initially was quite readable, ends up in a form that cannot be
                        understood at a simple glance. </p>
                    <p>For example, here's the Caesar Cipher encryption of a full message, using a right shift of
                        3. </p>
                    <img class="center-block" width="400px" style="margin-top: 20px;margin-bottom: 20px "class="img-responsive" src="../../assets/img/caesar_cipher.jpg">
                    "
                    <code>Plaintext:
                        THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG

                        Ciphertext:
                        QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD</code>

                    <p class=""><b>As unreadable </b>as the resulting ciphertext may appear, the Caesar Cipher is one of the
                        weakest forms of encryption one can employ for the following reasons:

                        The key space is very small. Using a brute force attack method, one could easily try all (25)
                        possible combinations to decrypt the message without initially knowing the key.
                        The structure of the original plaintext remains intact. This makes the encryption method
                        vulnerable to frequency analysis - by looking at h ow often certain characters or sequences of
                        characters appear, one can discover patterns and potentially discover the key without having to
                        perform a full brute force search.
                        The Caesar Cipher can be expressed in a more mathematical form as follows: </p>

                    <img class="center-block img-responsive" src="../../assets/img/cesar1.png">
                    <p> <b>In plain terms,</b> this means that the encryption of a letter x is equal to a shift of x + n, where
                        n is the number of letters shifted. The result of the process is then taken under modulo
                        division, essentially meaning that if a letter is shifted past the end of the alphabet, it wraps
                        around to the beginning.

                        Decryption of the encrypted text (called the ciphertext) would be carried out similarly,
                        subtracting the shift amount.</p>
                    <img class=" center-block img-responsive" src="../../assets/img/cesar2.png">
                    <p><b>First used by </b>Julius Caesar, the Caesar Cipher is one of the more well-known older historical
                        encryption methods. While you certainly wouldn't want to use it in today's modern world, a long
                        time ago it might have done the trick. </p>
                </div>

            </div>


        </div>
    </div>
<%@include file="../../Footer.jsp" %>