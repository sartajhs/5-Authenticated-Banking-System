<%-- 
    Document   : forgetcheck
    Created on : Mar 5, 2017, 1:43:55 PM
    Author     : Shri
--%>
<%@page import="BAL.EncryDecry"%>
<%@page import="BAL.mail.JavaGmailSendExample"%>
<%@page import="DAL.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = null;
Statement st = null;
         
            String loginname = request.getParameter("loginname");
            String password = request.getParameter("password1");
            EncryDecry ed = new EncryDecry();
            String password1 = ed.encry(password);
          //  out.println(password1+"   "+loginname);
            try{
Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fogcomputing","root","root");
 st=con.createStatement();
 PreparedStatement ps=con.prepareStatement("Update users set password='"+password1+"' where loginname='"+loginname+"'");
				//ps.setString(1,password1);
				int x=ps.executeUpdate();
 //out.println(x);		
response.sendRedirect("Login.jsp");
}

catch(Exception ex){
	out.println(ex);
}
            %>
    </body>
</html>
