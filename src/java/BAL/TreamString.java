/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BAL;

/**
 *
 * @author Praful
 */
public class TreamString {

    public String TreamString1(String str) {
        String result = "";
        try {
            for (int i = 0; i < 3; i++) {
                result += str.charAt(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /*public static void main(String[] args) {
        TreamString ts = new TreamString();
        String str = ts.TreamString1("Praful");
        System.out.println(str);
    }*/
}
