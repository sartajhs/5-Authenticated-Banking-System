

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Admin Login</title>
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
        <script language="JavaScript">
            function f1(login)
            {
                if(document.login.loginid.value=="")
                {
                    alert("Enter Login Id");
                    document.login.loginid.focus();
                    return false;
                }
                else if(document.login.password.value=="")
                {
                    alert("Enter Login Password");
                    document.login.password.focus();
                    return false;
                }
                else
                {
                    return true;
                }
                alert("me");
            }
        </script>
    </head>

    <body id="subpage">

        <div id="templatemo_header_wrapper">
            <!--<div id="site_title"><h1><a href="http://www.templatemo.com">Free CSS Templates</a></h1></div>-->

            <div class="cleaner"></div>
        </div>	

        <div id="templatemo_main">

            <h2>Login For Administrator</h2>
            <div class="half float_l">
                <div id="contact_form">
                    <form method="post" name="login" action="check.jsp" onsubmit="return f1(login);">

                        <label for="author">Login ID:</label> <input type="text" id="id" name="loginid" class="required input_field" />
                        <div class="cleaner h10"></div>
                        <label for="email">Password:</label> <input type="password" id="password" name="password" class="validate-email required input_field" />
                        <div class="cleaner h10"></div>
                        <input type="submit" value="Submit" id="submit" name="submit" class="submit_btn float_l" />
                        <input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />

                    </form>
                </div>
            </div>
            <div class="half float_r">

            </div>

            <div class="cleaner h40"></div>

                <div class="cleaner"></div>

            <div class="cleaner"></div>
        </div>

        <div id="templatemo_bottom_wrapper">
            <div id="templatemo_bottom">
                <div class="col one_third">
                    <h4><span></span></h4>
                    <div class="bottom_box">
                        <ul class="footer_list">

                        </ul>  
                    </div>
                </div>

                <div class="col one_third">
                    <h4><span></span></h4>
                    <div class="bottom_box">
                        <ul class="twitter_post">
           </ul>
                    </div>
                </div>
                <div class="col one_third no_margin_right">
                    <h4><span></span></h4>
                    <div class="bottom_box">
                          <div class="footer_social_button">
           </div>
                    </div>
                </div>

                <div class="cleaner"></div>
            </div
        </div> 

        <div id="templatemo_footer_wrapper">
            <div id="templatemo_footer">
                   </div> 
        </div> 

    </body>
</html>
