package com.LearnCrypt.Algorithms;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Random;

/**
 * Created by mohamed on 11/12/2017.
 */
public class AffineCipher {
    String Alhabet;
    String input;

    public static int indexOfChar(char A,String alphabet) throws IOException
    {
        for(int i=0;i< alphabet.length();i++)
        {
            if(alphabet.charAt(i)==A)
                return i;
        }
        // Not Found in the alphabet
        return -1;
    }

    public  static char charAtIndex(int pos,String alphabet) throws IOException
    {
        return alphabet.charAt(pos);
    }


    public AffineCipher(){

    }

    public static String encrypt(String alphabet,String  plainText,int firstKey,int secondKey) throws IOException{
        plainText=plainText.toUpperCase();
        String cipherText="";

        for(int i=0;i< plainText.length();i++)
        {
            int index=indexOfChar(plainText.charAt(i),alphabet);

            if(index==-1)
            {
                // Not Found
                cipherText+=plainText.charAt(i);
                continue;
            }
            else
            {
                cipherText+=charAtIndex(((firstKey*index)+secondKey)%alphabet.length(),alphabet);
            }
        }
        return cipherText;
    }



    public static String decode(String alphabet, String input, int firstKey, int secondKey)throws IOException{

        BigInteger inverse = BigInteger.valueOf(firstKey).modInverse(BigInteger.valueOf(alphabet.length()));

        input=input.toUpperCase();
        String decryptedText="";

        for(int i=0;i< input.length();i++)
        {int index=indexOfChar(input.charAt(i),alphabet);

            if(index==-1)
            {
                decryptedText+=input.charAt(i);
                continue;
            }

          else
            {

                // chari *(x-b) mod 26
                    decryptedText +=charAtIndex(inverse.intValue()*(input.charAt(i) - secondKey )% alphabet.length(),alphabet);



            }
        }

        return decryptedText;


    }


    public static String cryptAnalyss(String alphabet,String input)throws IOException{
        Random rand=null; int S=0;
        input=input.toUpperCase();
        String R="";
        for(int k=0;k<alphabet.length();k++)
        {
            String decryptedText="";
            int key;


            for(int i=0;i< 20;i++)

            {
                try {
                    decryptedText= decode(alphabet,input,5,7);
                } catch (IOException e) {
                    return  e.toString();
                }
            }

            R+=("-Decrypted Text Using key  1 = "+k+": <b> key 2"+S+decryptedText+"</b>");
        }
        return R ;
    }



    public static int randInt(int min, int max,int a) {
        Random rand=null;
        int R=0;
        int randomNum = rand.nextInt((max - min) + 1) + min;
     if ((pgcd(a,randomNum) == 1)){

         R= randomNum;
        }else

      randInt(min+1 ,max+1, a);


        return R;
    }





    public static   Integer pgcd(int a, int b) {
        int r;
        while (b != 0) {
            r = a % b;
            a = b;
            b = r;
        }
        return a;
    }





}
