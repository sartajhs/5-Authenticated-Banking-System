<%-- 
    Document   : psychotestcheck
    Created on : Jun 7, 2013, 9:25:43 AM
    Author     : Praful
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.SQLException"%>
<%@page import="DAL.MyAdo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <%
            String no1 = request.getParameter("no1");
            String queans1 = request.getParameter("queans1");
            String no2 = request.getParameter("no2");
            String queans2 = request.getParameter("queans2");
            String no3 = request.getParameter("no3");
            String queans3 = request.getParameter("queans3");
            String str1 = "", str2 = "", str3 = "";
            MyAdo ma = new MyAdo();
            int logcount = ma.logcount;
            logcount += 1;
            ma.logcount = logcount;
            ResultSet rs1, rs2, rs3;
            try {
                rs1 = ma.checkans(no1, session.getAttribute("sid").toString());
                while (rs1.next()) {
                    str1 = rs1.getString(no1);
                }
                rs2 = ma.checkans(no2, session.getAttribute("sid").toString());
                while (rs2.next()) {
                    str2 = rs2.getString(no2);
                }
                rs3 = ma.checkans(no3, session.getAttribute("sid").toString());
                while (rs3.next()) {
                    str3 = rs3.getString(no3);
                }
                if (queans1.equals(str1) & queans2.equals(str2) & queans3.equals(str3)) {
                    String str = ma.testpass(session.getAttribute("sid").toString());
                    if (str == "ok") {
                        response.sendRedirect("userpage.jsp");
                    } else {
                        response.sendRedirect("psychotest.jsp");
                    }
                } else {
                    if (logcount == 2) {
                        out.write("<script type='text/javascript'>\n");
                        out.write("alert( " + "' Your Answer Of Question Is Wrong Please Give Some More Answers'" + ");\n");
                        out.write("setTimeout(function(){window.location.href='psychotest.jsp'},0);");
                        out.write("</script>\n");
                    } else if (logcount >= 3) {
                        String str = ma.blocked(session.getAttribute("sid").toString());
                        if (str.equals("ok")) {
                            out.write("<script type='text/javascript'>\n");
                            out.write("alert( " + "' Your Answre of Sequrity Question Is Wrong. Your ID is Blocked '" + ");\n");
                            out.write("setTimeout(function(){window.location.href='../index.jsp'},0);");
                            out.write("</script>\n");
                        }
                    }
                }
            } catch (SQLException sql) {
                sql.printStackTrace();
            }
        %>
    </body>
</html>
