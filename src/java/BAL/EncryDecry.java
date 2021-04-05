/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BAL;

/**
 *
 * @author a
 */
public class EncryDecry {

    public String encry(String str) {
        String estr = "";
        for (int i = 0; i < str.length(); i++) {
            int n = (int) str.charAt(i);
            if (n >= 65 & n < 78) {
                n += 13;
            } else if (n >= 78 & n < 91) {
                n -= 13;
            } else if (n >= 48 & n < 53) {
                n += 5;
            } else if (n >= 53 & n < 58) {
                n -= 5;
            } else if (n >= 97 & n < 110) {
                n += 13;
            } else if (n >= 110 & n < 123) {
                n -= 13;
            }
            estr += (char) n;
        }
        return estr;
    }
}
