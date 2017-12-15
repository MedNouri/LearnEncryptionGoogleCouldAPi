package com.LearnCrypt;

import com.LearnCrypt.Algorithms.AffineCipher;
import com.LearnCrypt.Algorithms.CeaserCipher;
import com.google.api.server.spi.config.Api;
import com.google.api.server.spi.config.ApiMethod;
import com.google.api.server.spi.config.ApiMethod.HttpMethod;
import com.google.api.server.spi.config.Named;

import java.io.IOException;




/**
 * Defines endpoint functions APIs.
 */
@Api(name = "learnCryptographyEndpoints", version = "v1",
        scopes = {Constants.EMAIL_SCOPE},
        clientIds = {Constants.WEB_CLIENT_ID, Constants.API_EXPLORER_CLIENT_ID},
        description = "API for Learn Cryptography.")

public class LearnCryptographyEndpoints {


    // Declare this method For The Caesar cipher Encoder
    @ApiMethod(name = "caesarcipherEncoder", path = "caesarcipherEncoder",
            httpMethod = HttpMethod.GET)

    public CryptoClass caesarcipherEncoder(@Named("alphabet") String alphabet, @Named("plainText") String plainText, @Named("shiftKey") int shiftKey) {
        String R = "";
        try {
            R = CeaserCipher.Encrypt(plainText, shiftKey, alphabet);
        } catch (IOException e) {
            R = e.toString();
        }
        return new CryptoClass(R);
    }


    // Declare this method For The Caesar cipher Decoder
    @ApiMethod(name = "caesarcipherDecoder", path = "caesarcipherDecoder",
            httpMethod = HttpMethod.GET)
    public CryptoClass caesarcipherDecoder(@Named("alphabet") String alphabet, @Named("plaincode") String plaincode, @Named("shiftKey") int shiftKey) {
        String R = "";
        try {
            R = CeaserCipher.Decrypt(plaincode, shiftKey, alphabet);
        } catch (IOException e) {
            R = e.toString();
        }
        return new CryptoClass(R);
    }


    // Declare this method For The Caesar cipher CRYPTANALYSIS
    @ApiMethod(name = "caesarcipherCRYPTANALYSIS", path = "caesarcipherCRYPTANALYSIS",
            httpMethod = HttpMethod.GET)
    public CryptoClass caesarcipherCRYPTANALYSIS(@Named("alphabet") String alphabet, @Named("plainText") String plainText) {
        String R = "";
        try {
            R = CeaserCipher.bruteForce(plainText, alphabet);
        } catch (IOException e) {
            R = e.toString();
        }
        return new CryptoClass(R);
    }


    // Declare this method For The Affine cipher  Encoder
    @ApiMethod(name = "affineCipherEncoder", path = "affineCipherEncoder",
            httpMethod = HttpMethod.GET)
    public CryptoClass affineCipherEncoder(@Named("firstKey") int firstKey, @Named("secondkey") int secondKey, @Named("alphabet") String alphabet, @Named("input") String input) throws IOException {

        String R = "";
        if (!(pgcd(alphabet.length(), firstKey) == 1)) {
            throw new IOException("The substitution is not unique This is due to the fact that the coefficient A is not prime with ");

        } else {
            try {
                R = AffineCipher.encrypt(alphabet, input, firstKey, secondKey);
            } catch (IOException e) {
                R = e.toString();
            }
        }
        return new CryptoClass(R);
    }

    Integer pgcd(int a, int b) {
        int r;
        while (b != 0) {
            r = a % b;
            a = b;
            b = r;
        }
        return a;
    }


    // Declare this method For The Affine cipher Decoder
    @ApiMethod(name = "affineCipherDecoder", path = "affineCipherDecoder",
            httpMethod = HttpMethod.GET)

    public CryptoClass affineCipherDecoder(@Named("firstKey") int firstKey, @Named("secondkey") int secondKey, @Named("alphabet") String alphabet, @Named("input") String input) {
        String R = "";
        if (!(pgcd(alphabet.length(), firstKey) == 1)) {
            try {
                throw new IOException("The substitution is not unique This is due to the fact that the coefficient A is not prime with ");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {

            try {
                R = AffineCipher.decode(alphabet, input, firstKey, secondKey);
            } catch (IOException e) {
                R = e.toString();
            }
        }
        return new CryptoClass(R);

    }


    // Declare this method For The Affine cipher  CRYPTANALYSIS

    @ApiMethod(name = "affineecipherAnalysis", path = "affineecipherAnalysis",
            httpMethod = HttpMethod.GET)

    public CryptoClass affineecipherAnalysis(@Named("alphabet") String alphabet, @Named("input") String input) {
        String R = "";


            try {
                R = AffineCipher.cryptAnalyss(alphabet, input);
            } catch (IOException e) {
                R = e.toString();
            }

        return new CryptoClass(R);
    }


    // Declare this method For The vigenere Encoder
    @ApiMethod(name = "vigenerecipherEncoder", path = "vigenerecipherEncoder",
            httpMethod = HttpMethod.GET)

    public CryptoClass vigenerecipherEncoder(@Named("alphabet") String alphabet, @Named("key") String key, @Named("input") String input) {

        String R = "";
        VigenereCipher vigenereCipher = new VigenereCipher(alphabet);
        try {
            R = vigenereCipher.cipher(input, key);
        } catch (IOException e) {
            R =  e.toString();
        }

        return new CryptoClass(R);
    }


    // Declare this method For The vigenere cipher Decoder
    @ApiMethod(name = "vigenerecipherDecoder", path = "vigenerecipherDecoder",
            httpMethod = HttpMethod.GET)

    public CryptoClass vigenerecipherDecoder(@Named("alphabet") String alphabet, @Named("key") String key, @Named("input") String input) {

        String R = "";
        VigenereCipher vigenereCipher = new VigenereCipher(alphabet);
        try {
            R = vigenereCipher.decipher(input, key);
        } catch (IOException e) {
            R =   e.toString();
        }

        return new CryptoClass(R);
    }


    // Declare this method For The vigenere cipher  CRYPTANALYSIS
    @ApiMethod(name = "vigenerecipherAnalysis", path = "vigenerecipherAnalysis",
            httpMethod = HttpMethod.GET)

    public CryptoClass vigenerecipherAnalysis(@Named("alphabet") String alphabet,@Named("input") String input,@Named("plaintext") String plaintext) {
        String R = "";
        BruteForce bruteForce=new BruteForce();
        try {
            R += bruteForce.bruteForceAnalysis(alphabet,input,plaintext);
        } catch (IOException e) {
            R +=   e.toString();
        }
        return new CryptoClass(R);
    }


}









