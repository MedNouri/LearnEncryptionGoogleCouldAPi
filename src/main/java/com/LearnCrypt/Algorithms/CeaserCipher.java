package com.LearnCrypt.Algorithms;

import java.io.IOException;

/**
 * Created by moham on 11/12/2017.
 */
public class CeaserCipher {

    String input;
    String output;
    String alphabet;
    int key;


    public CeaserCipher(){

    }




    // Method Return the index of a character in the Alphabet

    public static int indexOfChar(char A,String alphabet)  throws IOException
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







        // Method Return Enrypted Text
        public   static  String Encrypt(String plainText,int key,String alphabet)  throws IOException
        {
            plainText=plainText.toUpperCase();
            String cipherText="";

            for(int i=0;i< plainText.length();i++)
            {
                int index=indexOfChar(plainText.charAt(i),alphabet);

                if(index==-1)
                {
                    cipherText+=plainText.charAt(i);

                    continue;
                }
                if((index+key)%alphabet.length()==0)
                {
                    cipherText+=charAtIndex(index+key,alphabet);
                }
                else
                {
                    cipherText+=charAtIndex((index+key)%alphabet.length(),alphabet);
                }
            }
            return cipherText;
        }
// Method Return Decrypted Text
      public  static String Decrypt(String cipherText,int key,String alphabet)  throws IOException
        {
            cipherText=cipherText.toUpperCase();
            String decryptedText="";

            for(int i=0;i< cipherText.length();i++)
            {int index=indexOfChar(cipherText.charAt(i),alphabet);

                if(index==-1)
                {
                    decryptedText+=cipherText.charAt(i);
                    continue;
                }
                if((index-key)>=0)
                {
                    decryptedText+=charAtIndex(index-key,alphabet);
                }
                else
                {
                    decryptedText+=charAtIndex((index-key)+alphabet.length(),alphabet);
                }
            }

            return decryptedText;
        }

        public  static  String bruteForce(String cipherText ,String alphabet)  throws IOException
        {
            cipherText=cipherText.toUpperCase();
            String R="";
            for(int k=0;k<alphabet.length();k++)
            {
                String decryptedText="";
                int key=k;
                for(int i=0;i< cipherText.length();i++)
                {
                    decryptedText= Decrypt(cipherText,k,alphabet);
                }

                R+=("-Decrypted Text Using key = "+key+": <b>"+decryptedText+"</b>");
            }
        return R ;
        }










}
