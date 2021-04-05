<%-- 
    Document   : transactions
    Created on : Jan 15, 2013, 1:50:13 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/datagrid.tld" prefix="grd" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="java.*"%>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<%@ page import="DAL.*" %>
<% // String user=request.getParameter("user");
    // Username.user=user;
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>FogComputing</title>
        <meta name="keywords" content="wooden strip, portfolio, theme, free templates, website templates, CSS, XHTML" />
        <meta name="description" content="Wooden Strip Portfolio - free website theme (xhtml/css) provided by templatemo.com" />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
        <link rel="StyleSheet" href="GridStyle.css"/>
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

        <script language="javascript">

            function doNavigate(pstrWhere, pintTot)
            {
                var strTmp;
                var intPg;

                strTmp = document.frmMain.txtCurr.value;
                intPg = parseInt(strTmp);
                if (isNaN(intPg))
                    intPg = 1;

                if ((pstrWhere == 'F' || pstrWhere == 'P') && intPg == 1)
                {
                    alert("You are already viewing first page!");
                    return;
                }
                else if ((pstrWhere == 'N' || pstrWhere == 'L') && intPg == pintTot)
                {
                    alert("You are already viewing last page!");
                    return;
                }

                if (pstrWhere == 'F')
                    intPg = 1;
                else if (pstrWhere == 'P')
                    intPg = intPg - 1;
                else if (pstrWhere == 'N')
                    intPg = intPg + 1;
                else if (pstrWhere == 'L')
                    intPg = pintTot;

                if (intPg < 1)
                    intPg = 1;
                if (intPg > pintTot)
                    intPg = pintTot;
                document.frmMain.txtCurr.value = intPg;
                document.frmMain.submit();
            }

            function doSort(pstrFld, pstrOrd)
            {
                document.frmMain.txtSortCol.value = pstrFld;
                document.frmMain.txtSortAsc.value = pstrOrd;
                document.frmMain.submit();
            }

        </script>


    </head>
    <body>

        <%
            MyAdo ma = new MyAdo();
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
                <p>Transaction Account </p>

            </div>
        </div>

        <div id="templatemo_middle_wrapper1">

            <div id="content_wrapper1">

                <div class="content_box_top1"></div>
                <div class="content_box1">


                    <div id="gallery">
                    </div>
                    <ul>
                        <li><a href="bal.jsp">View Balance</a></li>
                        <li><a href="withdrawal.jsp">Withdrawal</a></li>
                        <li><a href="deposit.jsp">Deposit</a></li>
                        <li><a href="userpage.jsp">Home</a></li>
                    </ul>                
                    <%
                        String loginname = session.getAttribute("sid").toString();
                        MyAdo md = new MyAdo();
                        ResultSet rs = md.balid(loginname);
                        String bal = "", id = "";
                        try {
                            while (rs.next()) {
                                id = rs.getString("id");
                                bal = rs.getString("bal");
                            }
                    %>
                    <center>
                        <strong><font size="5"><%=session.getAttribute("sid").toString()%> Last Some Transactions</font><br>

                        </strong>
                    </center>
                    <%

                        } catch (SQLException sql) {
                            sql.printStackTrace();
                            out.println("Error Error Error Error Error Error Error Error Error");
                        }
                    %>

                    <table   border="0" cellpadding="0" cellspacing="0" >

                        <%
                            // String user1=Username.user;
                            //  session.setAttribute("user",user1);
                            String ok = session.getAttribute("sid").toString();
                            int intCurr = 1;
                            int intSortOrd = 0;
                            int totRec = 0;
                            String strTmp = null;
                            String strSQL = null;
                            String strSortCol = null;
                            String strCountSQL = null;
                            String strSortOrd = "DESC";
                            boolean blnSortAsc = true;

                            Connection objCnn = null;
                            Class objDrvCls = null;
                            Context ctx = null;
                            Statement stmt = null;
                            //ResultSet rs = null;

                            strSQL = "SELECT * FROM transection where id='" + id + "'";
                            strCountSQL = "SELECT COUNT(1) FROM transection where id='" + id + "'";

                            ctx = new InitialContext();
//                           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//                            objCnn = DriverManager.getConnection("Jdbc:odbc:fogcomputing");

                            Class.forName("com.mysql.jdbc.Driver");
                            objCnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fogcomputing", "root", "root");

                            stmt = objCnn.createStatement();
                            rs = stmt.executeQuery(strCountSQL);
                            if (rs != null && rs.next()) {
                                totRec = rs.getInt(1);
                                rs.close();
                                rs = null;
                                stmt.close();
                                stmt = null;
                            }

                            strTmp = request.getParameter("txtCurr");
                            try {
                                if (strTmp != null) {
                                    intCurr = Integer.parseInt(strTmp);
                                }
                            } catch (NumberFormatException NFEx) {
                            }
                            strSortCol = request.getParameter("txtSortCol");
                            strSortOrd = request.getParameter("txtSortAsc");
                            if (strSortCol == null) {
                                strSortCol = "usertransection";
                            }
                            if (strSortOrd == null) {
                                strSortOrd = "DESC";
                            }
                            blnSortAsc = (strSortOrd.equals("DESC"));

                            stmt = objCnn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                            rs = stmt.executeQuery(strSQL + " ORDER BY " + strSortCol + " " + strSortOrd);
                        %>
                        <form NAME="frmMain" METHOD="post">
                            <strong> Your Total Transection : <%=totRec%></strong><br>
                                <grd:dbgrid id="tblStat" name="tblStat" width="100" pageSize="5" currentPage="<%=intCurr%>" 
                                border="0" cellSpacing="1" cellPadding="2" dataMember="<%=strSQL%>" 
                                dataSource="<%=rs%>" cssClass="gridTable" totalRecords="<%=totRec%>">
                                    <grd:gridpager imgFirst="images/First.gif" imgPrevious="images/Previous.gif" 
                                                   imgNext="images/Next.gif" imgLast="images/Last.gif" />
                                    <grd:gridsorter sortColumn="<%=strSortCol%>" sortAscending="<%=blnSortAsc%>" />

                                    <grd:textcolumn dataFormat="" dataField="transectionno" headerText="Transection No." width="5" 
                                                    />
                                    <grd:textcolumn dataField="id" headerText="User Id" width="2"
                                                    />
                                    <grd:textcolumn dataField="usertransection" headerText="User Transection No." width="7" 
                                                    />
                                    <grd:textcolumn dataField="trantype" headerText="Transection Type" width="7"
                                                    />
                                    <grd:textcolumn dataField="amount" headerText="Amount" width="3"
                                                    />
                                    <grd:textcolumn dataField="datetime" headerText="transection Date & Time" width="5"
                                                    />
                                </grd:dbgrid>
                                <input TYPE="hidden" NAME="txtCurr" VALUE="<%=intCurr%>">
                                    <input TYPE="hidden" NAME="txtSortCol" VALUE="<%=strSortCol%>">
                                        <input TYPE="hidden" NAME="txtSortAsc" VALUE="<%=strSortOrd%>">
                                            </form>
                                            </table> 



                                        </div><div class="content_box_bottom1"></div>

                                    </div>


                                    </div>

                                    <!--                                    <div id="templatemo_footer_wrapper">
                                    
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