<%-- 
    Document   : authenticaed
    Created on : May 10, 2013, 9:52:20 AM
    Author     : Praful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="DAL.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id=request.getParameter("item");
        
        MyAdo ma=new MyAdo();
        String str=ma.authenti(id);
        if(str=="ok")
        {
            out.write("<script type='text/javascript'>\n");
            out.write("alert( " + "' User Authentication Successful '" + ");\n");
            out.write("setTimeout(function(){window.location.href='authentication.jsp'},0);");
            out.write("</script>\n"); 
        }
        else
        {
            out.write("<script type='text/javascript'>\n");
            out.write("alert( " + "' User Authentication Fail '" + ");\n");
            out.write("setTimeout(function(){window.location.href='authentication.jsp'},0);");
            out.write("</script>\n"); 
        }
        %>
    </body>
</html>
