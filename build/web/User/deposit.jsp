

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
        <script language="JavaScript">
            function f1(with1)
            {
                //alert("me");
                //return false;
                if(document.with1.amount.value=="")
                {
                    alert("Enter Amount");
                    document.with1.amount.focus();
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <%
        
           MyAdo ma = new MyAdo();
           String str = ma.psychotest(session.getAttribute("sid").toString());
           if (str.equals("no")) {
               response.sendRedirect("psychotest.jsp");
              out.write("<script type='text/javascript'>\n");
               out.write("alert( " + "' Please Give Answers Some Sequriy Question Then You Are Able to Deposit '" + ");\n");              out.write("setTimeout(function(){window.location.href='psychotest.jsp'},0);");            out.write("</script>\n");
            }

        %>
        <%
       //    MyAdo ma = new MyAdo();
            ma.Visit(session.getAttribute("sid").toString(), ma.getOldLinks(session.getAttribute("sid").toString()) + "," + request.getRequestURL().toString());
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
            <p></p>
            </div>
        </div>
        <form name="with1" method="post" action="deposit1.jsp" onsubmit="return f1(with1);"
              <div id="templatemo_middle_wrapper">

                <div id="content_wrapper">

                    <div class="content_box_top"></div>
                    <div class="content_box">


                        <div id="gallery">
                        </div> 
                        <ul>
                            <li><a href="bal.jsp">View Balance</a></li>
                            <li><a href="withdrawal.jsp">Withdrawal</a></li>
                            <li><a href="transactions.jsp">Last Some Transactions</a></li>
                            <li><a href="userpage.jsp">Home</a></li>
                        </ul>
                        Enter Amount You Want TO Deposit
                        <input type="text" name="amount" value="" size="20" onkeyup="isNumber(this)"/>
                        <input type="submit" value="OK" name="ok" />

                    </div>
                    <div class="content_box_bottom"></div>

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
        </form>


        <div id="templatemo_copyright_wrapper">
            <div id="templatemo_copyright">
                   </div>
        </div>

    </body>
</html>
