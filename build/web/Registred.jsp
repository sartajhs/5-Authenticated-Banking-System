<%-- 
    Document   : Registred
    Created on : May 13, 2013, 12:47:01 PM
    Author     : Praful
--%>

<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.imageio.stream.FileImageInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BAL.*" %>
<%@page import="java.sql.*" %>
<%@page import="DAL.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monitoring</title>
    </head>
    <body>
        <%
            String title = request.getParameter("title");
            String fname = request.getParameter("fname");
            String midname = request.getParameter("midname");
            String lastname = request.getParameter("lastname");
            String moname = request.getParameter("moname");
            String day = request.getParameter("day");
            String month = request.getParameter("month");
            String year = request.getParameter("year");
            String dob = day + "." + month + "." + year;
            String gender = request.getParameter("gender1");
            String married = request.getParameter("married1");
            String pan = request.getParameter("pan");
            String aadhar = request.getParameter("aadhar");
            String address = request.getParameter("address");
            String mono = request.getParameter("mono");
            String phno = request.getParameter("phno");
            String email = request.getParameter("email");
            String country = request.getParameter("country");
            String state = request.getParameter("state");
            String district = request.getParameter("district");
            String taluka = request.getParameter("taluka");
            String pincode = request.getParameter("pincode");
            String loginname = request.getParameter("loginname");
            String password = request.getParameter("password");
            EncryDecry ed = new EncryDecry();
            String password1 = ed.encry(password);
//            File file = new File(request.getRealPath(request.getParameter("img")));
            File file = new File(request.getRealPath(""));

            try {
                MyAdo ma = new MyAdo();
                Random rm = new Random();
                long n = (long)(rm.nextDouble()*10000000000L);
                out.print(n);
                String str = ma.insertq(title, fname, midname, lastname, moname, dob, gender, married, pan, aadhar, address, mono, phno, email, country, state, district, taluka, pincode, loginname, password1, file, n+"");
                if (str == "ok") {
                    out.write("<script type='text/javascript'>\n");
                    out.write("alert( " + "' User Creation Successful '" + ");\n");
                    out.write("setTimeout(function(){window.location.href='index.jsp'},0);");
                    out.write("</script>\n");
                } else {
                    out.write("<script type='text/javascript'>\n");
                    out.write("alert( " + "' User Creation Fail '" + ");\n");
                    out.write("setTimeout(function(){window.location.href='Registrationform.jsp'},0);");
                    out.write("</script>\n");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
