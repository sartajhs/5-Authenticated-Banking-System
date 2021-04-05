<%-- 
    Document   : authentication
    Created on : May 10, 2013, 9:21:12 AM
    Author     : Praful
--%>

<%@ page contentType="text/html; charset=Cp1252" %>
<%@ taglib uri="/WEB-INF/datagrid.tld" prefix="grd" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %> 
<!DOCTYPE html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Authentication</title>
        <meta name="keywords" content="contact page, contact form, maps, carousel theme, free templates, website templates, templatemo" />
        <meta name="description" content="Carousel, Contact Page, Contact Form, Maps, free CSS template by templatemo.com" />
        <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

        <script type="text/javascript" src="js/jquery-1-4-2.min.js"></script> 
        <!--script type="text/javascript" src="/jqueryui/js/jquery-ui-1.7.2.custom.min.js"></script--> 
        <script type="text/javascript" src="js/jquery-ui.min.js"></script> 
        <script type="text/javascript" src="js/showhide.js"></script> 
        <script type="text/JavaScript" src="js/jquery.mousewheel.js"></script> 

        <link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/ddsmoothmenu.js">

            /***********************************************
             * Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
             * This notice MUST stay intact for legal use
             * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
             ***********************************************/

        </script>

        <script type="text/javascript">

            ddsmoothmenu.init({
                mainmenuid: "templatemo_menu", //menu DIV id
                orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
                classname: 'ddsmoothmenu', //class added to menu's outer DIV
                //customtheme: ["#1c5a80", "#18374a"],
                contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
            })

        </script> 



        <title>JSP Page</title>
        <link REL="StyleSheet" HREF="GridStyle.css">
            <script LANGUAGE="javascript">
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

    <body id="subpage">

        <div id="templatemo_header_wrapper">
            <div id="site_title"><h1><a href="http://www.templatemo.com">Free CSS Templates</a></h1></div>
            <div id="templatemo_menu" class="ddsmoothmenu">
                <ul>

                    <li><a href="succes.jsp">Home</a></li>
                    <li><a href="logmonitor.jsp">Log monitor</a></li>
                </ul>
                <br style="clear: left" />
            </div> <!-- end of templatemo_menu -->
            <div class="cleaner"></div>
        </div>	<!-- END of templatemo_header_wrapper -->

        <div id="templatemo_main">

            <!--<h1>Welcome <%= session.getAttribute("sid")%></h1>-->

            <div id="contact_form">

                <body>
                    <table   border="0" cellpadding="0" cellspacing="0" >

                        <%
                            int intCurr = 1;
                            int intSortOrd = 0;
                            int totRec = 0;
                            String strTmp = null;
                            String strSQL = null;
                            String strSortCol = null;
                            String strCountSQL = null;
                            String strSortOrd = "ASC";
                            boolean blnSortAsc = true;

                            Connection objCnn = null;
                            Class objDrvCls = null;
                            Context ctx = null;
                            Statement stmt = null;
                            ResultSet rs = null;
                            String loginname = request.getParameter("item");
                            strSQL = "SELECT srno,fname,lastname,mono,email,district,loginname,authentication FROM users where authentication='new'||authentication='block'";

                            strCountSQL = "SELECT COUNT(1) FROM users where authentication='new'||authentication='block'";

                            ctx = new InitialContext();
//                                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
//                                objCnn =DriverManager.getConnection("Jdbc:odbc:fogcomputing");
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
                                strSortCol = "srno";
                            }
                            if (strSortOrd == null) {
                                strSortOrd = "ASC";
                            }
                            blnSortAsc = (strSortOrd.equals("ASC"));

                            stmt = objCnn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                            rs = stmt.executeQuery(strSQL + " ORDER BY " + strSortCol + " " + strSortOrd);
                        %>
                        <form NAME="frmMain" METHOD="post">
                            <strong> Total Users : <%=totRec%></strong><br>
                                <grd:dbgrid id="tblStat" name="tblStat" width="100" pageSize="10" currentPage="<%=intCurr%>" 
                                border="0" cellSpacing="1" cellPadding="2" dataMember="<%=strSQL%>" 
                                dataSource="<%=rs%>" cssClass="gridTable" totalRecords="<%=totRec%>">
                                    <grd:gridpager imgFirst="images/First.gif" imgPrevious="images/Previous.gif" 
                                                   imgNext="images/Next.gif" imgLast="images/Last.gif" />
                                    <grd:gridsorter sortColumn="<%=strSortCol%>" sortAscending="<%=blnSortAsc%>" />
                                    <grd:imagecolumn headerText="Authenticate" width="5" HAlign="center" 
                                                     imageSrc="images/Edit.gif" linkUrl="authenticaed.jsp?item={loginname}" 
                                                     imageBorder="0" imageWidth="16" imageHeight="16" alterText="Click to edit"/>
                                    <grd:imagecolumn headerText="Block" width="5" HAlign="center" 
                                                     imageSrc="images/Edit.gif" linkUrl="blocked.jsp?item={loginname}" 
                                                     imageBorder="0" imageWidth="16" imageHeight="16" alterText="Click to edit"/>

                                    <grd:textcolumn dataField="loginname" headerText="Login ID" width="15" 
                                                    />
                                    <grd:textcolumn dataField="fname" headerText="First Name" width="15" 
                                                    />
                                    <grd:textcolumn dataField="lastname" headerText="Last Name" width="15" 
                                                    />
                                    <grd:textcolumn dataField="mono" dataFormat="#" headerText="Mobile No." width="15" 
                                                    />
                                    <grd:textcolumn dataField="email" headerText="Email-ID" width="15" 
                                                    />
                                    <grd:textcolumn dataField="district" headerText="City" width="15" 
                                                    />
                                    <grd:textcolumn dataField="authentication" headerText="Authentication" width="5"
                                                    />
                                </grd:dbgrid>
                                <input TYPE="hidden" NAME="txtCurr" VALUE="<%=intCurr%>">
                                    <input TYPE="hidden" NAME="txtSortCol" VALUE="<%=strSortCol%>">
                                        <input TYPE="hidden" NAME="txtSortAsc" VALUE="<%=strSortOrd%>">
                                            </form>
                                            </table>   <br>       
                                                </body>




                                                </div>



                                                <div class="cleaner h40"></div>


                                                <div class="cleaner"></div>

                                                <div class="cleaner"></div>
                                                </div> <!-- END of templatemo_main -->

                                                </body>
                                                </html>