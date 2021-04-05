/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BAL;

import java.util.*;

/**
 *
 * @author Ujju
 */
public class RandomRenge extends Random {

    public static String loginname;

    public int nextIncInc(int min, int max) {
        return nextInt(max - min + 1) + min;
    }

//    public static void main(String[] args) {
//     int no=500000;
//     RandomRenge rr = new RandomRenge();
//     int ok = rr.nextIncInc(400000, no);
//     System.out.println(ok);
//     }
}
