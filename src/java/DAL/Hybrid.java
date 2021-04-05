/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAL;

/**
 *
 * @author Shri
 */
public class Hybrid
   
{
    Hybrid() {}

    public byte[] Encryption_AES128(byte[] plain  , byte[] key) throws Exception
    {
        AES aes128 = new AES();
        return aes128.encrypt(key, plain);
    }
    public byte[] Decryption_AES128(byte[] cipher  , byte[] key) throws Exception
    {
        AES aes128 = new AES();
        return aes128.decrypt(key, cipher);
    }

    public byte[] Encryption_DES(byte[] plain  , byte[] key) throws Exception
    {
        DES des = new DES(key);
        return des.encrypt(plain);
    }
    public byte[] Decryption_DES(byte[] cipher  , byte[] key) throws Exception
    {
        DES des = new DES(key);
        return des.decrypt(cipher);
    }

    public byte[] Encryption_TripleDES(byte[] plain  , byte[] key) throws Exception
    {
        TripleDES Tdes = new TripleDES(key);
        return Tdes.encrypt(plain);
    }
    public byte[] Decryption_TripleDES(byte[] cipher  , byte[] key) throws Exception
    {
        TripleDES Tdes = new TripleDES(key);
        return Tdes.decrypt(cipher);
    }

    private static class DES {

        public DES() {
        }

        private DES(byte[] key) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        private byte[] decrypt(byte[] cipher) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        private byte[] encrypt(byte[] plain) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }
    }

    private static class TripleDES {

        public TripleDES() {
        }

        private TripleDES(byte[] key) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        private byte[] encrypt(byte[] plain) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        private byte[] decrypt(byte[] cipher) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }
    }
}
