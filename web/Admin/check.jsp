< %-- 
Document   : check
Created on : Feb 12, 2013, 12:42:51 PM
Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BAL.*" %>
<%@page import="java.sql.* " %>
<%@page import="DAL.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String loginid=request.getParameter("loginid");
        String password=request.getParameter("password");
        EncryDecry ed=new EncryDecry();
        String password1=ed.encry(password);
       
         ResultSet rs;
         int flag=0;
     try
     {		
         MyAdo ma=new MyAdo();
         rs=ma.loginadmin();
         while(rs.next())
         {
             if(rs.getString(1).equals(loginid)&rs.getString(2).equals(password1))
             {
                 flag=1;
             }
         }
         if(flag==1)
         {
             session.setAttribute("sid",loginid);
             response.sendRedirect("succes.jsp");
         }
         else
         {
             response.sendRedirect("login1.jsp");
         }
     }
     catch(SQLException sql)
     {
         sql.printStackTrace();
     }
     catch (Exception e) 
     {
         e.printStackTrace(); 
     }
        %>
    </body>
</html>
