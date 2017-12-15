package com.LearnCrypt;

import java.io.IOException;

/**
 * Created by mohamed on 12/12/2017.
 */


/**
 * Get position on alphabetM from character on position modulus d
 * with d as length from passphraseK
 *

 * @return
 * @throws IOException
 */


public class VigenereCipher {

    private String alphabetM;
    private int alphabetSizeN;


    public VigenereCipher(String alphabetM)
    {
        this.alphabetM = alphabetM;
        this.alphabetSizeN = alphabetM.length();
    }



    private int getKj(int position, String passphraseK) throws IOException
    {
        char character = passphraseK.charAt(position%passphraseK.length());
        int result = this.alphabetM.indexOf(character);

        if(result == -1){
            throw new IOException("Not character '"+character+"' for key in alphabet.");
        }

        return result;
    }



    public String decipher(String cipherText, String passphraseK) throws IOException
    {
        int cipherTextSize = cipherText.length();

        int inverseModule;
        char[] Mi = new char[cipherTextSize];
        int Ci, Kj; /* for i = position from char in plainText and j = i mod passphrase length */
        for(int i = 0; i < cipherTextSize; i++)
        {

       /* get position from char i of plainText on alphabetM */
            Ci = getMi(cipherText.charAt(i)); //this.alphabetM.indexOf(String.valueOf(plainText.charAt(i)));

       /* get position from i mod d (passphraseK length) */
            Kj = getKj(i, passphraseK);

       /* get char from Mi+Kj mod N (alphabetM length) */
            inverseModule = (Ci - Kj) % this.alphabetSizeN;

       /* Java doesn't resolve negative modules!! */
            inverseModule = inverseModule>=0 ? inverseModule : inverseModule+this.alphabetSizeN;

            Mi[i] = this.alphabetM.charAt(inverseModule);
        }

        return new String(Mi);
    }
    /**
     * Get position on alphabetM from character
     *
     * @param character
     * @return
     * @throws IOException
     */
    private int getMi(char character) throws IOException
    {
        int result = this.alphabetM.indexOf(String.valueOf(character));

        if(result == -1){
            throw new IOException("Not character '"+character+"' for text in alphabet.");
        }

        return result;
    }


    /**
     * Cipher plainText with Vigenère method
     *
     * @param plainText
     * @param passphraseK
     * @return
     * @throws IOException
     */
    public String cipher(String plainText, String passphraseK) throws IOException
    {
        int plainTextSize = plainText.length();

        char[] Ci = new char[plainTextSize];
        int Mi, Kj; /* for i = position from char in plainText and j = i mod passphrase length */
        for(int i = 0; i < plainTextSize; i++)
        {

       /* get position from char i of plainText on alphabetM */
            Mi = getMi(plainText.charAt(i));

       /* get position from i mod d (passphraseK length) */
            Kj = getKj(i, passphraseK);

       /* get char from Mi+Kj mod N (alphabetM length) */
            Ci[i] = this.alphabetM.charAt((Mi + Kj) % this.alphabetSizeN);
        }

        return new String(Ci);
    }
}
