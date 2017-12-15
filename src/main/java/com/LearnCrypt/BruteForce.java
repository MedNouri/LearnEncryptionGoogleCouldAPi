package com.LearnCrypt;

import com.LearnCrypt.VigenereCipher;

import java.io.IOException;

/**
 * This class try break cipher algoritm Vigenère
 * by brute force attack with a private key with 8 chars as maximum
 *
 * Usage: java BruteForce plainText cipherText alphabet
 * if alphabet is omitted, the program will use default alphabet "abcdefghijklmnopqrstuvwxyz"
 *
 * @author d.albela
 *
 */
public class BruteForce {


    private static String cipherText;
    private static String alphabetM;

    private static long startTime;

    /* Default M */
    public BruteForce() {

    }


    /* Max length search for a key */
    private static final int MAXIMUM_KEY_LENGTH = 5;

    public String bruteForceAnalysis(String alphabet,String input,String plainText ) throws IOException {
        String  R="";
    /* Get params */
        plainText =plainText;
        cipherText = input;
        alphabetM = alphabet.toUpperCase();
        startTime = System.nanoTime();

    /* Create all possible keys */
        for (int i = 1; i <= MAXIMUM_KEY_LENGTH; i++) {

            //"Searching key with "+i+" length...");
            R += plainText + permutation("", i,alphabet,plainText);
        }


        return R;
    }


    private static String ckeckPossibleKey(String key,String alphabet,String plainText) {
        VigenereCipher vigenereCipher = new VigenereCipher(alphabet);

        try {
            String result = vigenereCipher.decipher(cipherText, key);
            if(result.equals(plainText))
            {
                return key;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;

    }



    private static String permutation(String prefix, int length, String alphabet, String plainText)

    {
        String  R="";
        if (length == 0){

            String result;
            if( (result=ckeckPossibleKey(prefix,alphabet,plainText)) != null )
            {
                long duration = System.nanoTime() - startTime;

                 R +="Finded key: " + result ;

                 R += "Time: " + ((double)duration / 1000000000.0) + " seconds *";

            }

            //System.out.println(prefix);
        }
        else {
            for (int i = 0; i < alphabet.length(); i++){
                permutation(prefix + alphabetM.charAt(i), length-1,alphabet,plainText);
            }
        }


    return  R;
    }


}
