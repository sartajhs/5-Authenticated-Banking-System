<%-- 
    Document   :
--%>


<%@page import="BAL.mail.JavaGmailSendExample"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BAL.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.util.Locale" %>
<%@page import="DAL.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.text.*" %>
<!DOCTYPE html>
<%
    DateFormat dateformat = DateFormat.getDateInstance(DateFormat.FULL, Locale.US);
    String date1 = dateformat.format(new Date());
    CurrentTime ct = new CurrentTime();
    String time = ct.CurrentTime();
    String date = date1 + " " + time;
    JavaGmailSendExample.time = date;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            String term = request.getParameter("term");
            String loginname = request.getParameter("loginname");
            EncryDecry ed = new EncryDecry();
            String password = ed.encry(request.getParameter("password1"));
            String id = request.getParameter("id");
            String number = request.getParameter("number");
            String ip = request.getRemoteAddr();   //RETURNS IP ADDRESS OF CLIENT SYSTEM 
            JavaGmailSendExample.ip = ip;
            JavaGmailSendExample.UserID = loginname;
            MyAdo ma = new MyAdo();
            int logcount = ma.logcount;
            logcount += 1;
            ma.logcount = logcount;
            ma.testfail(loginname);
            ResultSet rs;
            int flag = 0;
            String aut = "";
            try {
                rs = ma.login();
                while (rs.next()) {
                    if (rs.getString(1).equals(loginname) & rs.getString(2).equals(password) & rs.getString(3).equals(id)) {
                        if (term.equals("2")) {
                            if (session.getAttribute("key").toString().equals(number)) {
                                aut = rs.getString(4);
                                flag = 1;
                                break;
                            } else {
                                flag = 0;
                            }
                        } else if (term.equals("1")) {
                            aut = rs.getString(4);
                            flag = 1;
                            break;
                        }
                    }
                }
                if (flag == 1) {
                    if (aut.equals("old")) {
                        session.setAttribute("sid", loginname);
                        ma.logmonitor(session.getAttribute("sid").toString(), ip, date);
                        ma.logtime = date;
                        DateTime dt = new DateTime();
                        dt.timedate = dt.getCurrentTimeStamp();
                        String testquestion = ma.testquestion(loginname);
                        if (testquestion.equals("no")) {
                            response.sendRedirect("User/psychotestInfo.jsp");
                        } else if (testquestion.equals("yes")) {
                            if (logcount == 1) {
                                response.sendRedirect("User/userpage.jsp");
                            } else if (logcount == 2) {
                                response.sendRedirect("User/psychotest.jsp");
                            } else if (logcount > 2) {
                                String str = ma.blocked(loginname);
                                if (str.equals("ok")) {
//                                    out.write("<script type='text/javascript'>\n");
//                                    out.write("alert( " + "' Your Answre of Sequrity Question Is Wrong. Your ID is Blocked'" + ");\n");
//                                    out.write("setTimeout(function(){window.location.href='./index.jsp'},0);");
//                                    out.write("</script>\n");
                                    session.setAttribute("sid", loginname);
                                    int bal = new RandomRenge().nextIncInc(400000, 500000);
                                    session.setAttribute(loginname, bal);
                                    String[] arguments = new String[]{ip, loginname, date};
                                    new JavaGmailSendExample().main(arguments);
                                    response.sendRedirect("FogServer/userpage.jsp");
                                } else if (str.equals("no")) {
                                    out.write("<script type='text/javascript'>\n");
                                    out.write("alert( " + "' Your ID is Not Found'" + ");\n");
                                    out.write("setTimeout(function(){window.location.href='./index.jsp'},0);");
                                    out.write("</script>\n");
                                }

                            }
                        }
                    }
                    if (aut.equals("block")) {
//                        out.write("<script type='text/javascript'>\n");
//                        out.write("alert( " + "' Your ID is Blocked Please Contact in office. '" + ");\n");
//                        out.write("setTimeout(function(){window.location.href='index.jsp'},0);");
//                        out.write("</script>\n");
                        session.setAttribute("sid", loginname);
                        int bal = new RandomRenge().nextIncInc(400000, 500000);
                        session.setAttribute(loginname, bal);
                        String[] arguments = new String[]{ip, loginname, date};
                        new JavaGmailSendExample().main(arguments);
                        response.sendRedirect("FogServer/userpage.jsp");
                    } else {
                        out.write("<script type='text/javascript'>\n");
                        out.write("alert( " + "' You are not able to LOGIN.  Your Authentication is in Proses.  Try To Login After Sometime. '" + ");\n");
                        out.write("setTimeout(function(){window.location.href='./index.jsp'},0);");
                        out.write("</script>\n");
                    }
                } else if (logcount > 2 && flag != 1) {
                    String str = ma.blocked(loginname);
                    if (str.equals("ok")) {
//                                    out.write("<script type='text/javascript'>\n");
//                                    out.write("alert( " + "' Your Answre of Sequrity Question Is Wrong. Your ID is Blocked'" + ");\n");
//                                    out.write("setTimeout(function(){window.location.href='./index.jsp'},0);");
//                                    out.write("</script>\n");
                        session.setAttribute("sid", loginname);
                        int bal = new RandomRenge().nextIncInc(400000, 500000);
                        session.setAttribute(loginname, bal);
                        String[] arguments = new String[]{ip, loginname, date};
                        new JavaGmailSendExample().main(arguments);
                        response.sendRedirect("FogServer/userpage.jsp");
                    }
                } else {
                    response.sendRedirect("Login1.jsp");
                }
            } catch (SQLException sql) {
                sql.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
