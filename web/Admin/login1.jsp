<%-- 
    Document   : login1
    Created on : Feb 20, 2013, 8:56:45 AM
    Author     : Praful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Carousel Theme - Contact Page</title>
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
            <div id="site_title"><h1><a href="http://www.templatemo.com">Free CSS Templates</a></h1></div>
            <div id="templatemo_menu" class="ddsmoothmenu">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a>
                        <ul>
                            <li><span class="top"></span><span class="bottom"></span></li>
                            <li><a href="http://www.templatemo.com/page/1">Sub menu 1</a></li>
                            <li><a href="http://www.templatemo.com/page/2">Sub menu 2</a></li>
                            <li><a href="http://www.templatemo.com/page/3">Sub menu 3</a></li>
                        </ul>
                    </li>
                    <li><a href="portfolio.html">Portfolio</a>
                        <ul>
                            <li><span class="top"></span><span class="bottom"></span></li>
                            <li><a href="http://www.templatemo.com/page/1">Sub menu 1</a></li>
                            <li><a href="http://www.templatemo.com/page/2">Sub menu 2</a></li>
                            <li><a href="http://www.templatemo.com/page/3">Sub menu 3</a></li>
                            <li><a href="http://www.templatemo.com/page/4">Sub menu 4</a></li>
                            <li><a href="http://www.templatemo.com/page/5">Sub menu 5</a></li>
                        </ul>
                    </li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="contact.html" class="selected">Contact</a>

                    </li>
                </ul>
                <br style="clear: left" />
            </div> <!-- end of templatemo_menu -->
            <div class="cleaner"></div>
        </div>	<!-- END of templatemo_header_wrapper -->

        <div id="templatemo_main">

            <h2>Login For Administrator</h2>
            <div class="half float_l">
                <div id="contact_form">
                    <form method="post" name="login" action="check.jsp" onsubmit="return f1(login);">


                        <lable><font color="red"><strong>Your Login ID or Password Wrong</strong></font></lable>

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
                <h4>Our Branches</h4>
                <h6><strong>Location One</strong></h6>
                280-560 Sed ac luctus quam et,<br />
                Morbi molestie justo non 12660<br />
                Convallis ac ultrices<br /><br />

                <strong>Phone:</strong> 020-190-1080 <br />
                <strong>Email:</strong> <a href="mailto:info@company.com">one@company.com</a>  <br />

                <div class="cleaner h40"></div>
                <h6><strong>Location Two</strong></h6>
                880-990 Praesent quam mauris,<br />
                Fusce cursus turpis lacus 11440<br />
                Donec mauris nunc<br /><br />

                <strong>Phone:</strong> 010-447-0250 <br />
                <strong>Email:</strong> <a href="mailto:info@company.com">two@company.com</a>  <br />

                <div class="cleaner h40"></div>
                <h6><strong>Location Three</strong></h6>
                420-630 Donec scelerisque eleifend,<br />
                Nulla nec leo sit 11990<br />
                Habitant Morbi<br /><br />

                <strong>Phone:</strong> 030-080-0220 <br />
                <strong>Email:</strong> <a href="mailto:info@company.com">three@company.com</a>  <br />

            </div>

            <div class="cleaner h40"></div>

             <iframe width="960" height="340" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Softech+Solution,+Gayatri,+Nagar,+Nagpur,+Maharashtra,+IN&amp;aq=0&amp;sll=72.83&amp;sspn=18.98&amp;vpsrc=6&amp;ie=UTF8&amp;hq=Softech+Solution,+Gayatri,+Nagar,+Nagpur,+Maharashtra,+IN&amp;ll=18.98;&amp;t=m&amp;output=embed"></iframe>
            <div class="cleaner"></div>

            <div class="cleaner"></div>
        </div> <!-- END of templatemo_main -->

        <div id="templatemo_bottom_wrapper">
            <div id="templatemo_bottom">
                <div class="col one_third">
                    <h4><span></span>Blogroll</h4>
                    <div class="bottom_box">
                        <ul class="footer_list">
                            <li><a href="http://www.templatemo.com/page/1">Free CSS Templates</a></li>
                            <li><a href="http://www.webdesignmo.com/blog">Web Design Resources</a></li>
                            <li><a href="http://www.flashmo.com">Free Flash Templates</a></li>
                            <li><a href="http://www.templatemo.com">Website Templates</a></li>
                            <li><a href="http://www.koflash.com">Free Web Gallery</a></li>
                        </ul>  
                    </div>
                </div>

                <div class="col one_third">
                    <h4><span></span>Updates</h4>
                    <div class="bottom_box">
                        <ul class="twitter_post">
                            <li>Curabitur nec dui venenatis sem consectetur facilisis. Donec velit nisi, lacinia sed et. <a href="#">http://bit.ly/13IwZO</a></li>
                            <li>Proin dignissim, diam nec <a href="#">@TemplateMo</a> enim lorem tempus orci, ac imperdiet ante purus in justo.</li>
                        </ul>
                    </div>
                </div>
                <div class="col one_third no_margin_right">
                    <h4><span></span>About Us</h4>
                    <div class="bottom_box">
                        <p><em>Duis sem nisl, dignissim ac feugiat in, mattis sit amet est. Duis leo leo, suscipit cursus vehicula sit amet. Sed varius pellentesque massa vel rutrum.</em></p><br />              
                        <div class="footer_social_button">
                            <a href="#"><img src="images/facebook.png" title="facebook" alt="facebook" /></a>
                            <a href="#"><img src="images/flickr.png" title="flickr" alt="flickr" /></a>
                            <a href="#"><img src="images/twitter.png" title="twitter" alt="twitter" /></a>
                            <a href="#"><img src="images/youtube.png" title="youtube" alt="youtube" /></a>
                            <a href="#"><img src="images/feed.png" title="rss" alt="rss" /></a>
                        </div>
                    </div>
                </div>

                <div class="cleaner"></div>
            </div> <!-- END of tempatemo_bottom -->
        </div> <!-- END of tempatemo_bottom_wrapper -->

        <div id="templatemo_footer_wrapper">
            <div id="templatemo_footer">
                Copyright © 2048 Your Company Name | Designed by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
            </div> <!-- END of templatemo_footer_wrapper -->
        </div> <!-- END of templatemo_footer -->

    </body>
</html>