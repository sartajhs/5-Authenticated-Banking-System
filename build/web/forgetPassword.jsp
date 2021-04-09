

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DAL.*"%>
<%MyAdo m = new MyAdo();
    m.logcount = 0;
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>FogComputing</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-ptsans.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/coin-slider.min.js"></script>
        <script type="text/javascript" src="js/Validations.js"></script>
    </head>
    <body>
        <div class="main">
            <div class="header">
                <div class="header_resize">
                    <div class="logo">
                        <h1><a href="index.html"><span>FogComputing</span></a></h1>
                    </div>
                    <div class="menu_nav">
                        <ul>
                            <li><a href="index.jsp"><span>Home Page</span></a></li>
                            <li><a href="Registration.jsp"><span>Registration</span></a></li>
                            <li class="active"><a href="Login.jsp"><span>Login</span></a></li>
                        </ul>
                    </div>
                    <div class="clr"></div>
                    <div class="slider">
                        <div id="coin-slider"><a href="#"><img src="images/slide1.jpg" width="960" height="313" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="313" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="313" alt="" /></a></div>
                        <div class="clr"></div>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize">
                    <div class="mainbar">
                        <div class="article">
                            <p class="infopost1" align="center">Forget Password Form </p>
                            <div class="clr"></div>
                            <form name="forget" method="post" action="forgetcheck.jsp" >
                                <table border="0" align="center">

                                    <tbody>
                                        <tr>
                                            <td><strong>Login Name</strong><sup><font color="red">*</font></sup></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="loginname" value="" size="30" /></td>
                                        </tr>
                                        <tr>
                                            <td><strong>Enter New Password</strong><sup><font color="red">*</font></sup></td>
                                        </tr>
                                        <tr>    
                                            <td><input type="password" name="password1" value="" size="30" /></td>
                                        </tr>
                                       
                                        <tr>
                                            <td colspan="2">
                                                <input type="submit" value="Reset Password" name="submit" />
                                                <input type="reset" value="Reset" name="reset" /></td>
                                        </tr>
                                     
                                    </tbody>
                                </table> 
                            </form>
                            <div class="clr"></div>
                        </div>
        </div>
                    <div class="sidebar">
    <div class="clr"></div>
             <div class="gadget">
                            <h2 class="star"><span>News And Events</span></h2>
                            <div class="clr"></div>
                            <ul class="ex_menu">

                                <%
                                    MyAdo ma = new MyAdo();
                                    ResultSet rs = ma.news();
                                    try {
                                        while (rs.next()) {
                                %>
                                <marquee direction="up" onMouseOver="this.stop();"onMouseOut="this.start();"
                                    <li><img src="images/on.png" width="11" height="11" alt="on"/>&nbsp;&nbsp;<%= rs.getString(2)%><br />
                                    </li>                                    
                                    <li><img src="images/on.png" width="11" height="11" alt="on"/>&nbsp;&nbsp;<%= rs.getString(3)%><br />
                                    </li>
                                    <li><img src="images/on.png" width="11" height="11" alt="on"/>&nbsp;&nbsp;<%= rs.getString(4)%><br />
                                    </li>
                                    <li><img src="images/on.png" width="11" height="11" alt="on"/>&nbsp;&nbsp;<%= rs.getString(5)%><br />
                                    </li>
                                    <li><img src="images/on.png" width="11" height="11" alt="on"/>&nbsp;&nbsp;<%= rs.getString(6)%><br />
                                    </li>
                                    <li><img src="images/on.png" width="11" height="11" alt="on"/>&nbsp;&nbsp;<%= rs.getString(7)%><br />
                                    </li>                          
                                </marquee>
                            </ul>


                            <%
                                    }
                                } catch (SQLException sql) {
                                    sql.printStackTrace();
                                }
                            %>
                        </div>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>

            <div class="footer">
                <div class="footer_resize">
      <div style="clear:both;"></div>
                </div>
            </div>
        </div>
      </html>
