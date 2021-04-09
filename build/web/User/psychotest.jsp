

<%@page import="org.apache.catalina.Session"%>
<%@page import="DAL.MyAdo"%>
<%@page import="BAL.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%RandomRenge.loginname = session.getAttribute("sid").toString();%>
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
        <script type="text/javascript" src="js/Validations.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $().piroBox({
                    my_speed: 600, //animation speed
                    bg_alpha: 0.5, //background opacity
                    radius: 4, //caption rounded corner
                    scrollImage : false, // true == image follows the page, false == image remains in the same open position
                    pirobox_next : 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
                    pirobox_prev : 'piro_prev',// Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
                    close_all : '.piro_close',// add class .piro_overlay(with comma)if you want overlay click close piroBox
                    slideShow : 'slideshow', // just delete slideshow between '' if you don't want it.
                    slideSpeed : 4 //slideshow duration in seconds(3 to 6 Recommended)
                });
            });
        </script>
        <!--////// END  \\\\\\\-->

    </head>
    <body>
        <table border="0" align="right">
            <tbody>
                <tr>
                    <td><div class="button"><strong>Welcome <%=session.getAttribute("sid").toString()%>   </strong><a href=" logout.jsp">Logout</a>
                        </div> </td>
                </tr>
            </tbody>
        </table>
        <%!    public String no1 = "", no2 = "", no3 = "";
            public String que1 = "", que2 = "", que3 = "";
            public String ans1[] = new String[4];
        %>

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
                <p> PSYCHOMATRIC TEST</p>

            </div>
        </div>

        <div id="templatemo_middle_wrapper">

            <div id="content_wrapper">

                <div class="content_box_top"></div>
                <div class="content_box">
                    <%!public void recall() {

                            MyAdo ma = new MyAdo();
                            try {
                                for (int i = 0; i < 3; i++) {
                                    ResultSet rs = ma.getquestion();
                                    while (rs.next()) {
                                        if (i == 0) {
                                            no1 = rs.getString("queid");
                                            que1 = rs.getString("questions");
                                        }
                                        if (i == 1) {
                                            no2 = rs.getString("queid");
                                            que2 = rs.getString("questions");
                                        }
                                        if (i == 2) {
                                            no3 = rs.getString("queid");
                                            que3 = rs.getString("questions");
                                        }
                                    }
                                }
                            } catch (SQLException sql) {
                                sql.printStackTrace();
                            }
                        }
                    %>

                    <%!public void ans(String pass) {
                            MyAdo ma = new MyAdo();
                            try {
                                ResultSet rs = ma.getanswer(pass, RandomRenge.loginname);
                                int i = 0;
                                while (rs.next()) {
                                    ans1[i++] = rs.getString(pass);
                                }
                            } catch (SQLException sql) {
                                sql.printStackTrace();
                            }
                        }
                    %>

                    <!--<div id="comment_form">-->
                        <div>
                            <center><strong><font size="5">Psychometric Test For<%=session.getAttribute("sid").toString()%></font></strong></center>
                            <%
                                recall();
                                if (no1.equals(no2)) {
                                    recall();
                                }

                                if (no2.equals(no3)) {
                                    recall();
                                }

                                if (no3.equals(no1)) {
                                    recall();
                                }
                            %>
                            <form name="radioans" method="post" action="psychotestcheck.jsp" onsubmit="return f2(radioans),f3(radioans),f4(radioans),f5(radioans);">
                                <table border="0" align="center">
                                    <tbody>
                                        <tr>
                                            <td colspan="2"><%=que1%></td>
                                        </tr>
                                        <tr>
                                            <% ans(no1);%>
                                            <td colspan="2"><input type="radio" name="question1" value="<%=ans1[0]%>" onclick="rb1=ans1[0]"/><%=ans1[0]%></td><td colspan="2"><input type="radio" name="question1" value="<%=ans1[1]%>" onclick="rb1=ans1[1]"/><%=ans1[1]%></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><input type="radio" name="question1" value="<%=ans1[2]%>" onclick="rb1=ans1[2]"/><%=ans1[2]%></td><td colspan="2"><input type="radio" name="question1" value="<%=ans1[3]%>" onclick="rb1=ans1[3]"/><%=ans1[3]%></td>
                                            <td><input type="hidden" name="queans1" value="" onload="f2(radioans);"/><input type="hidden" name="no1" value="<%=no1%>" /></td>
                                        </tr>
                                        <tr>
                                            <td><%=que2%></td>
                                        </tr>
                                        <tr>
                                            <% ans(no2);%>
                                            <td colspan="2"><input type="radio" name="question2" value="<%=ans1[0]%>" onclick="rb2=ans1[0]"/><%=ans1[0]%></td><td colspan="2"><input type="radio" name="question2" value="<%=ans1[1]%>" onclick="rb2=ans1[1]"/><%=ans1[1]%></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><input type="radio" name="question2" value="<%=ans1[2]%>" onclick="rb2=ans1[2]"/><%=ans1[2]%></td><td colspan="2"><input type="radio" name="question2" value="<%=ans1[3]%>" onclick="rb2=ans1[3]"/><%=ans1[3]%></td>
                                            <td><input type="hidden" name="queans2" value="" onload="f3(radioans);"/><input type="hidden" name="no2" value="<%=no2%>" /></td>
                                        </tr>
                                        <tr>
                                            <td><%=que3%></td>
                                        </tr>
                                        <tr>
                                            <% ans(no3);%>
                                            <td colspan="2"><input type="radio" name="question3" value="<%=ans1[0]%>" onclick="rb3=ans1[0]"/><%=ans1[0]%></td><td colspan="2"><input type="radio" name="question3" value="<%=ans1[1]%>" onclick="rb3=ans1[1]"/><%=ans1[1]%></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><input type="radio" name="question3" value="<%=ans1[2]%>" onclick="rb3=ans1[2]"/><%=ans1[2]%></td><td colspan="2"><input type="radio" name="question3" value="<%=ans1[3]%>" onclick="rb3=ans1[3]"/><%=ans1[3]%></td>
                                            <td><input type="hidden" name="queans3" value="" onload="f4(radioans);"/><input type="hidden" name="no3" value="<%=no3%>" /></td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2"><input type="submit" value="Submit" name="submit" /><input type="reset" value="Reset" name="reset" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>
                        </div>
                    <!--</div>--> 

                </div><div class="content_box_bottom"></div>

            </div>

            <div id="sidebar_wrapper">



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



            </div>

            <div class="cleaner"></div>

        </div>



        <div id="templatemo_copyright_wrapper">
            <div id="templatemo_copyright">
                     </div>
        </div>

    </body>
</html>
