<%-- 
    Document   : logout
    Created on : May 25, 2013, 6:26:43 PM
    Author     : Praful
--%>

<%@page import="DAL.*"%>
<%@page import="BAL.*" %>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    DateFormat dateformat = DateFormat.getDateInstance(DateFormat.FULL, Locale.US);
    String date1 = dateformat.format(new Date());
    CurrentTime ct = new CurrentTime();
    String time = ct.CurrentTime();
    String date = date1 + " " + time;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            MyAdo ma = new MyAdo();
            String logtime = ma.logtime;
            String otime = ma.otime;
            DateTime dt = new DateTime();
            String sessiontime = dt.DateDifference(dt.timedate, dt.getCurrentTimeStamp());
            String str = ma.logupdate(date, session.getAttribute("sid").toString(), logtime, sessiontime);
            String str1=ma.testfail(session.getAttribute("sid").toString());
            if (str == "ok" & str1=="ok") {
                session.removeAttribute("sid");
                ma.logcount=0;
                out.write("<script type='text/javascript'>\n");
                out.write("alert( " + "' You Logout Sucsessfull'" + ");\n");
                out.write("setTimeout(function(){window.location.href='../index.jsp'},0);");
                out.write("</script>\n");
            }
        %>

    </body> 
</html>
