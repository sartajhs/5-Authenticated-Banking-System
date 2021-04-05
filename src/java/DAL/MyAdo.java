/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import BAL.RandomRenge;
import BAL.TreamString;
import java.io.*;
import java.sql.*;

/**
 *
 * @author a
 */
public class MyAdo {
    // Object Oriented DataBase 

    public static String logtime;
    public static String otime;
    public static int count, logcount;
    public Connection con; // Establishes connectivity
    public Statement st; // process query
    public ResultSet rs;

    //To Create Connection
    public MyAdo() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fogcomputing", "root", "root");
//            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//            con = DriverManager.getConnection("Jdbc:odbc:fogcomputing");
            con.setAutoCommit(true);
            st = con.createStatement();
        } catch (SQLException sql) {
            sql.printStackTrace();
        } catch (Exception exc) {
            exc.printStackTrace();
        }
    }

    // To Create User using Insert Query     
    public String insertq(String title, String fname, String midname, String lastname, String moname, String dob, String gender, String married, String pan, String aadhar, String address, String mono, String phno, String email, String country, String state, String district, String taluka, String pincode, String loginname, String password, File img, String userid) {
        String str = "", id = "", accountno = "";
        int count = 0;
        try {
            String qry1 = "SELECT COUNT(1) FROM users";
            rs = st.executeQuery(qry1);
            if (rs != null && rs.next()) {
                count = rs.getInt(1);
            }
            count += 1;
            TreamString ts = new TreamString();
            String tream = ts.TreamString1(loginname);
            id = "sbi" + tream + count;
            accountno = "sbi" + count;
            String qry = "Insert into users(title,fname,midname,lastname,moname,dob,gender,married,pan,aadhar,address,mono,phno,email,country,state,district,taluka,pincode,loginname,password,authentication,photo,userid,id,accountno,bal,count,testquestion,test1,test2) values('" + title + "','" + fname + "','" + midname + "','" + lastname + "','" + moname + "','" + dob + "','" + gender + "','" + married + "','" + pan + "','" + aadhar + "','" + address + "'," + mono + ",'" + phno + "','" + email + "','" + country + "','" + state + "','" + district + "','" + taluka + "'," + pincode + ",'" + loginname + "','" + password + "','old','" + img + "','" + userid + "','" + id + "','" + accountno + "','000','000','no','fail','fail')";
            st.execute(qry);
            str = "ok";

        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    // To Admin Login
    public ResultSet loginadmin() {
        try {
            String qry = "select loginid,password from admin";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    //To Login User
    public ResultSet login() {
        try {
            String qry = "select loginname,password,userid,authentication from users";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    // To commen News
    public ResultSet news() {
        int count = 0;
        try {
            String qry1 = "SELECT COUNT(1) FROM news";
            rs = st.executeQuery(qry1);
            if (rs != null && rs.next()) {
                count = rs.getInt(1);
            }
            String qry = "select * from news where sr_no=" + count + "";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    public String addnews(String news1, String news2, String news3, String news4, String news5, String news6, String date) {
        String str = "";
        try {

            String qry = "Insert into news(news1,news2,news3,news4,news5,news6,date) values('" + news1 + "','" + news2 + "','" + news3 + "','" + news4 + "','" + news5 + "','" + news6 + "','" + date + "')";
            st.execute(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    //To insert Login Time in logmonitor table
    public String logmonitor(String id, String ip, String logintime) {
        String str = "";
        //  logtime=logintime;
        try {
            String qry = "insert into logmonitor(id,ip,logintime) values('" + id + "','" + ip + "','" + logintime + "')";
            st.execute(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return str;
    }

    //To Updare Logmonito table for LogoutTime enter
    public String logupdate(String logouttime, String id, String logintime, String sessiontime) {
        String str = "no";
        try {
            //str=logtime;
            String qry = "update logmonitor set logouttime='" + logouttime + "',sessiontime='" + sessiontime + "' where id='" + id + "' && logintime='" + logintime + "'";
            st.executeUpdate(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return str;
    }

    //To Authenticate users
    public String authenti(String id) {
        String str = "";
        try {
            //str=logtime;
            String qry = "update users set authentication='old' where loginname='" + id + "'";
            st.executeUpdate(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    //To Blocked users
    public String blocked(String id) {
        String str = "";
        try {
            //str=logtime;
            String qry = "update users set authentication='block' where loginname='" + id + "'";
            st.executeUpdate(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    // To View Balance
    public ResultSet viewbal(String loginname) {
        try {
            String qury = "select bal from users where loginname='" + loginname + "'";
            rs = st.executeQuery(qury);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    // To View Balance and Id
    public ResultSet balid(String loginname) {
        try {
            String qury = "select id,bal from users where loginname='" + loginname + "'";
            rs = st.executeQuery(qury);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    // To Done Withdrawal
    public String withdrawal(String loginname, int amount, String date) {
        int bal = 0, count1 = 0;
        String str = "", id = "";
        try {
            String qury = "select bal,count,id from users where loginname='" + loginname + "'";
            rs = st.executeQuery(qury);
            while (rs.next()) {
                id = rs.getString("id");
                bal = rs.getInt("bal");
                count1 = Integer.parseInt(rs.getString("count"));
            }
            if (bal > 500) {
                if (bal - amount >= 500) {
                    count1 = count1 + 1;
                    String usertransection = id + count1;
                    int bal1 = bal - amount;
                    try {
                        String qury1 = "update users set bal=" + bal1 + ",count='" + count1 + "' where loginname='" + loginname + "'";
                        st.execute(qury1);
                        String qury2 = "insert into transection (id,usertransection,trantype,amount,datetime) values('" + id + "','" + usertransection + "','Withdrawal','" + amount + "','" + date + "')";
                        st.execute(qury2);
                        str = "ok";
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    str = "NoBal";
                }
            } else {
                str = "MiniBal";
            }
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    // To Deposit Mony
    public String deposit(String loginname, int amount, String date) {
        int bal = 0, count1 = 0;
        String str = "", id = "";
        try {
            String qury = "select bal,count,id from users where loginname='" + loginname + "'";
            rs = st.executeQuery(qury);
            while (rs.next()) {
                id = rs.getString("id");
                bal = rs.getInt("bal");
                count1 = Integer.parseInt(rs.getString("count"));
            }
            count1 = count1 + 1;
            String usertransection = id + count1;
            int bal1 = bal + amount;
            try {
                String qury1 = "update users set bal=" + bal1 + ",count='" + count1 + "' where loginname='" + loginname + "'";
                st.execute(qury1);
                String qury2 = "insert into transection (id,usertransection,trantype,amount,datetime) values('" + id + "','" + usertransection + "','Deposite','" + amount + "','" + date + "')";
                st.execute(qury2);
                str = "ok";
            } catch (SQLException e) {
                e.printStackTrace();
                str = "no";
            }
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    // To see Test question
    public String testquestion(String loginname) {
        String str = "";
        try {
            String qry = "select testquestion from users where loginname='" + loginname + "'";
            rs = st.executeQuery(qry);
            while (rs.next()) {
                str = rs.getString("testquestion");
            }
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return str;
    }

    // To Enter Psychotest Information
    public String psychotestInfo(String loginname, String que1, String que2, String que3, String que4, String que5, String que6, String que7, String que8, String que9, String que10, String que11) {
        String str = "";
        try {
            String qry1 = "insert into psychotestans (id,que1,que2,que3,que4,que5,que6,que7,que8,que9,que10,que11) values('" + loginname + "','" + que1 + "','" + que2 + "','" + que3 + "','" + que4 + "','" + que5 + "','" + que6 + "','" + que7 + "','" + que8 + "','" + que9 + "','" + que10 + "','" + que11 + "')";
            st.execute(qry1);
            String qur2 = "update users set testquestion='yes' where loginname='" + loginname + "'";
            st.executeUpdate(qur2);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    // To Check psychotest 
    public String psychotest(String loginname) {
        String str = "", test1 = "";
        try {
            String qry = "select test1 from users where loginname='" + loginname + "'";
            rs = st.executeQuery(qry);
            while (rs.next()) {
                test1 = rs.getString("test1");
            }
            if (test1.equals("fail")) {
                str = "no";
            } else if (test1.equals("pass")) {
                str = "ok";
            }
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return str;
    }

    // To get Question
    public ResultSet getquestion() {
        RandomRenge rr = new RandomRenge();
        int number = rr.nextIncInc(1, 11);
        try {
            String qry = "select queid,questions from psychotest where srno='" + number + "'";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    // To get Answer
    public ResultSet getanswer(String que, String id) {
        int n1 = 0, n2 = 0, n3 = 0, n4 = 0, count = 0, idno = 0;
        try {
            String qry1 = "SELECT COUNT(1) FROM psychotestans";
            rs = st.executeQuery(qry1);
            if (rs != null && rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        for (int i = 0; i < 4; i++) {
            RandomRenge rr = new RandomRenge();
            int number = rr.nextIncInc(1, count);
            if (i == 0) {
                n1 = number;
            } else if (i == 1) {
                n2 = number;
            } else if (i == 2) {
                n3 = number;
            } else if (i == 3) {
                n4 = number;
            }
        }
        try {
            String qry = "SELECT srno FROM psychotestans WHERE id='" + id + "'";
            rs = st.executeQuery(qry);
            while (rs.next()) {
                idno = rs.getInt(1);
            }
            RandomRenge rr = new RandomRenge();
            int number1 = rr.nextIncInc(1, 4);
            if (number1 == 1) {
                n1 = idno;
            } else if (number1 == 2) {
                n2 = idno;
            } else if (number1 == 3) {
                n3 = idno;
            } else if (number1 == 4) {
                n4 = idno;
            }
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        try {
            String qry = "SELECT " + que + " FROM psychotestans WHERE srno='" + n1 + "' OR srno='" + n2 + "' OR srno='" + n3 + "' OR srno='" + n4 + "'";
            //SELECT que3 FROM psychotestans WHERE srno=4 OR srno=1 OR srno=8 OR srno=5;
            rs = st.executeQuery(qry);
            /*if (n1 == n2 || n1 == n3 || n1 == n4 || n2 == n3 || n2 == n4 || n3 == n4) {
             getanswer(que, id);
             rs.close();
             }*/
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    // To Check Answer is Right or Wrong
    public ResultSet checkans(String que, String id) {
        try {
            String qry = "SELECT " + que + " FROM psychotestans WHERE id='" + id + "'";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    // To Make Test Pass
    public String testpass(String loginname) {
        String str = "";
        try {
            String qry = "update users set test1='pass' where loginname='" + loginname + "'";
            st.executeUpdate(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    // To Make Test Fail
    public String testfail(String loginname) {
        String str = "";
        try {
            String qry = "update users set test1='fail' where loginname='" + loginname + "'";
            st.executeUpdate(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    // To Get Information
    public ResultSet getdata(String loginname) {
        try {
            String qury = "select * from users where loginname='" + loginname + "'";
            rs = st.executeQuery(qury);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    public String userupdate(String title, String fname, String midname, String lastname, String moname, String dob, String gender, String married, String pan, String aadhar, String address, String mono, String phno, String email, String country, String state, String district, String taluka, String pincode, String loginname) {
        String str = "";
        try {
            String qury = "update users set title='" + title + "',fname='" + fname + "',midname='" + midname + "',lastname='" + lastname + "',moname='" + moname + "',dob='" + dob + "',gender='" + gender + "',married='" + married + "',pan='" + pan + "',aadhar='" + aadhar + "',address='" + address + "',mono='" + mono + "',phno='" + phno + "',email='" + email + "',country='" + country + "',state='" + state + "',district='" + district + "',taluka='" + taluka + "',pincode='" + pincode + "' where loginname='" + loginname + "'";
            st.execute(qury);
            str = "ok";
        } catch (SQLException e) {
            e.printStackTrace();
            str = "no";
        }
        return str;
    }

    //To Get Old Links
    public String getOldLinks(String id) {
        String str = "";
        try {
            String qury = "select VisitedLinks from logmonitor where id='" + id + "' && logintime='" + logtime + "'";
            rs = st.executeQuery(qury);
            while (rs.next()) {
                str = rs.getString(1);
            }
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return str;
    }

    //To Visited Links
    public String Visit(String id, String links) {
        String str = "";
        try {
            //str=logtime;
            String qry = "update logmonitor set VisitedLinks='" + links + "' where id='" + id + "' && logintime='" + logtime + "'";
            st.executeUpdate(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }
}
