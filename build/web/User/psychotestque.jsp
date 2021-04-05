<%-- 
    Document   : psychotest
    Created on : Jun 4, 2013, 12:04:30 PM
    Author     : Ujju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAL.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String que1 = request.getParameter("que1");
            String que2 = request.getParameter("que2");
            String que3 = request.getParameter("que3");
            String que4 = request.getParameter("que4");
            String que5 = request.getParameter("que5");
            String que6 = request.getParameter("que6");
            String que7 = request.getParameter("que7");
            String que8 = request.getParameter("que8");
            String que9 = request.getParameter("que9");
            String que10 = request.getParameter("que10");
            String que11 = request.getParameter("que11");
            MyAdo ma = new MyAdo();
            String str = ma.psychotestInfo(session.getAttribute("sid").toString(), que1, que2, que3, que4, que5, que6, que7, que8, que9, que10, que11);
            if (str == "ok") {
                out.write("<script type='text/javascript'>\n");
                out.write("alert( " + "' Information Added '" + ");\n");
                out.write("setTimeout(function(){window.location.href='userpage.jsp'},0);");
                out.write("</script>\n");
            } else if (str == "no") {
                out.write("<script type='text/javascript'>\n");
                out.write("alert( " + "' Information Adding is Fail '" + ");\n");
                out.write("setTimeout(function(){window.location.href='../Login1.jsp'},0);");
                out.write("</script>\n");
            }
        %>
    </body>
</html>
