<%-- 
    Document   : bal
    Created on : Jan 15, 2013, 1:47:54 PM
    Author     : a
--%>

<%@page import="BAL.RandomRenge"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="DAL.*" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>FogComputing</title>
        <meta name="keywords" content="wooden strip, portfolio, theme, free templates, website templates, CSS, XHTML" />
        <meta name="description" content="Wooden Strip Portfolio - free website theme (xhtml/css) provided by templatemo.com" />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />

        <!--////// CHOOSE ONE OF THE 3 PIROBOX STYLES  \\\\\\\-->
        <link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
        <!--<link href="css_pirobox/white/style.css" media="screen" title="white" rel="stylesheet" type="text/css" />
        <link href="css_pirobox/black/style.css" media="screen" title="black" rel="stylesheet" type="text/css" />-->
        <!--////// END  \\\\\\\-->

        <!--////// INCLUDE THE JS AND PIROBOX OPTION IN YOUR HEADER  \\\\\\\-->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/piroBox.1_2.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $().piroBox({
                    my_speed: 600, //animation speed
                    bg_alpha: 0.5, //background opacity
                    radius: 4, //caption rounded corner
                    scrollImage: false, // true == image follows the page, false == image remains in the same open position
                    pirobox_next: 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
                    pirobox_prev: 'piro_prev', // Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
                    close_all: '.piro_close', // add class .piro_overlay(with comma)if you want overlay click close piroBox
                    slideShow: 'slideshow', // just delete slideshow between '' if you don't want it.
                    slideSpeed: 4 //slideshow duration in seconds(3 to 6 Recommended)
                });
            });
        </script>
        <!--////// END  \\\\\\\-->

    </head>
    <body>

        <%
//            MyAdo ma = new MyAdo();
//            ma.Visit(session.getAttribute("sid").toString(), ma.getOldLinks(session.getAttribute("sid").toString()) + "," + request.getRequestURL().toString());
%>
        <table border="0" align="right">
            <tbody>
                <tr>
                    <td><div class="button"><strong>Welcome <%=session.getAttribute("sid").toString()%>   </strong><a href=" logout.jsp">Logout</a>
                        </div> </td>
                </tr>
            </tbody>
        </table>

        <div id="templatemo_header_wrapper">
            <div id="templatemo_header">

                <div id="header_left">

                    <div id="site_title">

                        <a href="#"><img src="images/cooltext867626108.png" alt="logo" />State Bank of India</a>

                    </div> <!-- end of site_title -->

                </div>



                <div class="cleaner"></div>

            </div>
        </div>

        <div id="templatemo_top_wrapper">
            <div id="templatemo_top">

                <h2></h2>
                <%--  <p></p>

            --%> </div>
        </div>

        <div id="templatemo_middle_wrapper">

            <div id="content_wrapper">

                <div class="content_box_top"></div>
                <div class="content_box">


                    <div id="gallery">

                    </div>   
                    <ul>
                        <li><a href="withdrawal.jsp">Withdrawal</a></li>
                        <li><a href="deposit.jsp">Deposit</a></li>
                        <li><a href="transactions.jsp">Last Some Transactions</a></li>
                        <li><a href="userpage.jsp">Home</a></li>
                    </ul>  
                    <%
//                        MyAdo md = new MyAdo();
                        String bal = "";
//                        try {
                        String loginname = session.getAttribute("sid").toString();
//                            ResultSet rs = md.viewbal(loginname);
//                            if (rs.next()) {
                        bal = session.getAttribute(loginname).toString();
                    %>
                    <center>
                        <strong><font size="5"><%=session.getAttribute("sid").toString()%> Your Balance</font><br>
                                <font size="4"> <%=bal%></font>
                        </strong>
                    </center>
                    <%
//                            }
//                        } catch (SQLException sql) {
//                            sql.printStackTrace();
//                            out.println("Error Error Error Error Error Error Error Error Error");
//                        }
                    %>


                </div><div class="content_box_bottom"></div>

            </div>

            <div id="sidebar_wrapper">

                <div class="sidebar_top"></div>

                <!--                <div class="sidebar">
                                    <a href="http://www.templatemo.com" target="_parent"><img src="images/banner_240x120.jpg" alt="banner" width="240" height="120" /></a>
                                </div>
                
                                <div class="sidebar_bottom"></div>
                
                                <div class="sidebar_top"></div>-->

                <div class="sidebar">

                    <h4>Other Services</h4>
                    <ul>
                        <li><a href="https://prepaid.onlinesbi.com/CMS/" target="_blank">Complaints</a></li>
                        <li><a href="personal/disclaimer_popup.html" target="_blank">Online Shopping</a></li>
                        <li><a href="https://prepaid.onlinesbi.com/" target="_blank">Foreign Travel/EZ-Pay/Gift Cards</a></li>
                        <li><a href="http://www.statebankofindia.com/user.htm?action=viewsection&lang=0&id=0,1,21,691" target="_blank">Mobile Banking Services</a></li>
                        <li><a href="https://www.onlinesbi.com/nri/" target="_blank">NRI Services</a></li>
                        <li><a href="https://www.onlinesbiglobal.com/" target="_blank">OnlineSBI Global</a></li>
                        <li><a href="https://remit.onlinesbi.com/" target="_blank">SBI Express Remit</a></li>
                        <li><a href="http://www.onlinesbi.com/scfu/scfu_home.html" target="_blank">e-DFS/e-VFS</a></li>
                        <li><a href="https://www.sbicmp.co.in/" target="_blank">SBI F.A.S.T.</a></li>
                        <li><a href="personal/atm_cum_debitcard.html">Secure Card Transactions</a></li>
                        <li><a href="https://www.onlinesbi.com/sbivc.html" target="_blank">Net Banking for Visually Challanged</a></li>
                        <li><a href="personal/sbi_efile_income_tax_returns_filing_online_ITR.html">SBI e-File</a></li>
                    </ul>

                </div>

                <!--                <div class="sidebar_bottom"></div>
                
                                <div class="sidebar_top"></div>
                                <div class="sidebar">
                
                                    <h4>Useful Links</h4>
                                    <ul>
                                        <li><a href="http://www.sbimf.com/" target="_blank">SBI Mutual Fund</a></li>
                                        <li><a href="http://www.sbicard.com/" target="_blank">SBI Card</a></li>
                                        <li><a href="http://www.sbicapsec.com/" target="_blank">SBICAP Securities</a></li>
                                        <li><a href="http://www.sbilife.co.in" target="_blank">SBI Life Insurance</a></li>
                                        <li><a href="http://www.sbigeneral.in" target="_blank">SBI General Insurance</a></li>
                                    </ul>
                
                                </div><div class="sidebar_bottom"></div>-->

            </div>

            <div class="cleaner"></div>

        </div>

        <!--        <div id="templatemo_footer_wrapper">
        
                    <div id="templatemo_footer">
        
                        <div class="col_w270">
                            <h4>Follow Us</h4>
                            <p>Cras a volutpat lacus. Ut nisi metus, lobortis vel egestas at, condimentum.</p>
        
                            <ul id="social_box">
                                <li><a href="http://www.facebook.com/templatemo"><img src="images/facebook.png" alt="facebook" /></a></li>
                                <li><a href="http://www.facebook.com/templatemo"><img src="images/twitter.png" alt="twitter" /></a></li>
                                <li><a href="#"><img src="images/linkedin.png" alt="linkin" /></a></li>
                                <li><a href="#"><img src="images/technorati.png" alt="technorati" /></a></li>
                                <li><a href="#"><img src="images/myspace.png" alt="myspace" /></a></li>                
                            </ul>
                        </div>
        
                        <div class="col_w270">
                            <h4>Our Pages</h4>
                            <ul>
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="portfolio.html">Portfolio</a></li>
                                <li><a href="services.html">Services</a></li>
                                <li><a href="Registrationform.jsp">Blog Post</a></li>
                                <li><a href="contact.html" class="last">Contact</a></li>
                            </ul>  
                        </div>
        
                        <div class="col_w270 col_w270_last">
                            <h4>Partners</h4>
                            <ul>
                                <li><a href="http://www.flashmo.com">Flash Templates</a></li>
                                <li><a href="http://www.templatemo.com">Free CSS Templates</a></li>
                                <li><a href="http://www.koflash.com">Flash Websites</a></li>
                                <li><a href="http://www.templatemo.com/page/1">Web Templates</a></li>
                            </ul>
                        </div>
        
                        <div class="cleaner"></div>
                    </div>
        
                </div>-->

        <div id="templatemo_copyright_wrapper">
            <div id="templatemo_copyright">
                <!--Copyright © 2048 <a href="#">Your Company Name</a> | Designed by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>-->
            </div>
        </div>

    </body>
</html>