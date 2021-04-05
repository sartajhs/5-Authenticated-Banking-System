/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.*;
import java.io.*;

/**
 *
 * @author a
 */
public class MyAdo1 {
    // Object Oriented DataBase 

    public static String logtime;
    public static String otime;
    public static int count;
    public Connection con; // Establishes connectivity
    public Statement st; // process query
    public ResultSet rs;

    //To Create Connection
    public MyAdo1() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fogcomputing", "root", "");
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
    public String insertq(String title, String fname, String midname, String lastname, String moname, String dob, String gender, String married, String pan, String aadhar, String address, String mono, String phno, String email, String country, String state, String district, String taluka, String pincode, String loginname, String password) {
        String str = "";
        try {
            String qry = "Insert into users(title,fname,midname,lastname,moname,dob,gender,married,pan,aadhar,address,mono,phno,email,country,state,district,taluka,pincode,loginname,password,authentication) values('" + title + "','" + fname + "','" + midname + "','" + lastname + "','" + moname + "','" + dob + "','" + gender + "','" + married + "','" + pan + "','" + aadhar + "','" + address + "'," + mono + ",'" + phno + "','" + email + "','" + country + "','" + state + "','" + district + "','" + taluka + "'," + pincode + ",'" + loginname + "','" + password + "','new')";
            st.execute(qry);
            str = "ok";

        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    //To Password Change for user
    public String changepass(String npassword1, String opassword1, String sid) {
        String str = "";
        try {
            String qry = "update users set password='" + npassword1 + "' where loginname='" + sid + "' && password='" + opassword1 + "'";
            st.executeUpdate(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    //To Password Change for admin
    public String changepassadmin(String npassword1, String opassword1, String sid) {
        String str = "";
        try {
            String qry = "update admin set password='" + npassword1 + "' where loginid='" + sid + "' && password='" + opassword1 + "'";
            st.executeUpdate(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    //To Login User
    public ResultSet login() {
        try {
            String qry = "select loginname,password,authentication from users";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    //To Login Admin
    public ResultSet loginadmin() {
        try {
            String qry = "select loginid,password from admin";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    //To See Data Login User
    public ResultSet dataofloginuser(String sid) {
        try {
            String qry = "select * from users where loginname='" + sid + "'";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    //To Delete Record
    public String del(String id) {
        String str = "";
        try {
            String qry = "delete from users where loginname='" + id + "'";
            st.execute(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    //To Search Users for Admin
    public ResultSet search() {
        try {
            String qry = "select loginname from users";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    //To Search Users for authantication
    public ResultSet autsearch() {
        try {
            String qry = "select loginname from users where authentication='new'";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    //To User Record UpDate from admin
    public String userupdate(String address, String mono, String email, String city, String state, String country, String pin, String id) {
        String str = "";
        try {
            String qry = "update users set address='" + address + "',mono=" + mono + ",email='" + email + "',city='" + city + "',state='" + state + "',country='" + country + "',pincode=" + pin + " where loginname='" + id + "'";
            st.executeUpdate(qry);
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
    public String logupdate(String logouttime, String id, String logintime) {
        String str = "";
        try {
            //str=logtime;
            String qry = "update logmonitor set logouttime='" + logouttime + "' where id='" + id + "' && logintime='" + logintime + "'";
            st.executeUpdate(qry);
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

    public ResultSet forgot(String loginname) {
        try {
            String qry = "select authentication,fname,lname,mono,dob,email from users where loginname='" + loginname + "'";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    public String forgotpass(String npassword1, String sid) {
        String str = "";
        try {
            String qry = "update users set password='" + npassword1 + "' where loginname='" + sid + "'";
            st.executeUpdate(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }

    public ResultSet contact(String id) {
        try {
            String qry = "select cname from contact where id='" + id + "'";
            rs = st.executeQuery(qry);
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        return rs;
    }

    public String contacinsert(String cname, String csname, String cno, String cemail, String id) {
        String str = "";
        try {
            String qry = "insert into contact(id,cname,csname,cno,cemail) values('" + id + "','" + cname + "','" + csname + "','" + cno + "','" + cemail + "')";
            st.execute(qry);
            str = "ok";
        } catch (SQLException sql) {
            sql.printStackTrace();
            str = "no";
        }
        return str;
    }
}
