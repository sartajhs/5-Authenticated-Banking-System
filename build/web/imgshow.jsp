<%-- 
    Document   : imgshow
    Created on : May 15, 2013, 7:57:15 PM
    Author     : Praful
--%>

<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="DAL.MyAdo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monitoring</title>
    </head>
    <body>
        <%
            try {
                Statement st = null;
                
                MyAdo ma = new MyAdo("ids");
                String strQuery = "select photo from users where srno='6'";
                ResultSet rs = st.executeQuery(strQuery);

                String imgLen = "";
                if (rs.next()) {
                    imgLen = rs.getString(1);
                }
                rs = st.executeQuery(strQuery);
                if (rs.next()) {
                    int len = imgLen.length();
                    byte[] rb = new byte[len];
                    InputStream readImg = rs.getBinaryStream(1);
                    int index = readImg.read(rb, 0, len);
                    st.close();
                    response.reset();
                    response.getOutputStream().write(rb, 0, len);
                    response.getOutputStream().flush();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
