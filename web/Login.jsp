<%-- 
    Document   : Login
    Created on : May 11, 2013, 7:33:09 PM
    Author     : Praful
--%>

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
                            <p class="infopost1" align="center">Login Form </p>
                            <div class="clr"></div>
                            <form name="login" method="post" action="checklogin.jsp?term=1" onsubmit="return log(login);">
                                <table border="0" align="center">

                                    <tbody>
                                        <tr>
                                            <td><strong>Login Name</strong><sup><font color="red">*</font></sup></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="loginname" value="" size="30" /></td>
                                        </tr>
                                        <tr>
                                            <td><strong>Password</strong><sup><font color="red">*</font></sup></td>
                                        </tr>
                                        <tr>    
                                            <td><input type="password" name="password1" value="" size="30" /></td>
                                        </tr>
                                        <tr>
                                            <td><strong>ID</strong><sup><font color="red">*</font></sup></td>
                                        </tr>
                                        <tr>    
                                            <td><input type="text" name="id" value="" size="30" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <input type="submit" value="Login" name="submit" />
                                                <%-- <input type="button" value="Refresh" onClick="window.location.href=window.location.href"></td>--%>
                                                <input type="reset" value="Reset" name="reset" /></td>
                                        </tr>
                                       <tr>
                                            <td><a href="forgetPassword.jsp">Forgot Your Password</a></td>
                                        </tr>
                                    </tbody>
                                </table> 
                            </form>
                            <div class="clr"></div>
                        </div>
<!--                        <div class="article">
                            <h2><span>We'll Make Sure Template</span> Works For You</h2>
                            <p class="infopost">Posted <span class="date">on 29 aug 2016</span> by <a href="#">Admin</a> &nbsp;&nbsp;|&nbsp;&nbsp; Filed under <a href="#">templates</a>, <a href="#">internet</a> <a href="#" class="com">Comments <span>(7)</span></a></p>
                            <div class="clr"></div>
                            <div class="img"><img src="images/img2.jpg" width="179" height="215" alt="" class="fl" /></div>
                            <div class="post_content">
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. <a href="#">Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</a> Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam. Cras fringilla magna. Phasellus suscipit, leo a pharetra condimentum, lorem tellus eleifend magna, eget fringilla velit magna id neque. Curabitur vel urna. In tristique orci porttitor ipsum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam.</p>
                                <p><strong>Aenean consequat porttitor adipiscing. Nam pellentesque justo ut tortor congue lobortis. Donec venenatis sagittis fringilla.</strong> Etiam nec libero magna, et dictum velit. Proin mauris mauris, mattis eu elementum eget, commodo in nulla. Mauris posuere venenatis pretium. Maecenas a dui sed lorem aliquam dictum. Nunc urna leo, imperdiet eu bibendum ac, pretium ac massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Quisque condimentum luctus ullamcorper.</p>
                                <p class="spec"><a href="#" class="rm">Read more &raquo;</a></p>
                            </div>
                            <div class="clr"></div>
                        </div>
                        <p class="pages"><small>Page 1 of 2</small> <span>1</span> <a href="#">2</a> <a href="#">&raquo;</a></p>-->
                    </div>
                    <div class="sidebar">
<!--                        <div class="searchform">
                            <form id="formsearch" name="formsearch" method="post" action="#">
                                <span>
                                    <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
                                </span>
                                <input name="button_search" src="images/search.gif" class="button_search" type="image" />
                            </form>
                        </div>-->
                        <div class="clr"></div>
<!--                        <div class="gadget">
                            <h2 class="star"><span>Sidebar</span> Menu</h2>
                            <div class="clr"></div>
                            <ul class="sb_menu">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">TemplateInfo</a></li>
                                <li><a href="#">Style Demo</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">Archives</a></li>
                                <li><a href="#">Web Templates</a></li>
                            </ul>
                        </div>-->
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
<!--            <div class="fbg">
                <div class="fbg_resize">
                    <div class="col c1">
                        <h2><span>Image</span> Gallery</h2>
                        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
                    <div class="col c2">
                        <h2><span>Services</span> Overview</h2>
                        <p>Curabitur sed urna id nunc pulvinar semper. Nunc sit amet tortor sit amet lacus sagittis posuere cursus vitae nunc.Etiam venenatis, turpis at eleifend porta, nisl nulla bibendum justo.</p>
                        <ul class="fbg_ul">
                            <li><a href="#">Lorem ipsum dolor labore et dolore.</a></li>
                            <li><a href="#">Excepteur officia deserunt.</a></li>
                            <li><a href="#">Integer tellus ipsum tempor sed.</a></li>
                        </ul>
                    </div>
                    <div class="col c3">
                        <h2><span>Contact</span> Us</h2>
                        <p>Nullam quam lorem, tristique non vestibulum nec, consectetur in risus. Aliquam a quam vel leo gravida gravida eu porttitor dui.</p>
                        <p class="contact_info"> <span>Address:</span> 1458 TemplateAccess, USA<br />
                            <span>Telephone:</span> +123-1234-5678<br />
                            <span>FAX:</span> +458-4578<br />
                            <span>Others:</span> +301 - 0125 - 01258<br />
                            <span>E-mail:</span> <a href="#">mail@yoursitename.com</a> </p>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>-->
            <div class="footer">
                <div class="footer_resize">
<!--                    <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
                    <p class="rf">Design by Dream <a href="http://www.dreamtemplate.com/">Web Templates</a></p>-->
                    <div style="clear:both;"></div>
                </div>
            </div>
        </div>
        <!--<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>-->
</html>
