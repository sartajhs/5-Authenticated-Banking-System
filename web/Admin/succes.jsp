<%-- 
    Document   : succes
    Created on : Feb 19, 2013, 1:03:46 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Admin Panel</title>
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

    </head>

    <body id="subpage">

        <div id="templatemo_header_wrapper">
            <div id="site_title"><h1><a href="http://www.templatemo.com">Free CSS Templates</a></h1></div>
            <div id="templatemo_menu" class="ddsmoothmenu">
                <ul>
                    <li><a href="logmonitor.jsp">Log monitor</a></li>
                    <li><a href="authentication.jsp">Authentication</a></li>
                </ul>
                <br style="clear: left" />
            </div> <!-- end of templatemo_menu -->
            <div class="cleaner"></div>
        </div>	<!-- END of templatemo_header_wrapper -->

        <div id="templatemo_main">

            <h1>Welcome <%= session.getAttribute("sid")%></h1>
            <div class="half float_l">
                <div id="contact_form">
                    <marquee behavior="alternate"><h3><font color="green"><strong>Hi All Of You</strong></font></h3></marquee>
                </div>
            </div>

            <div class="cleaner h40"></div>

            <div class="cleaner"></div>

            <div class="cleaner"></div>
        </div> <!-- END of templatemo_main -->



    </body>
</html>