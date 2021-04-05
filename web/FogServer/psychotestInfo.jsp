<%-- 
    Document   : psychotestInfo
    Created on : Jun 3, 2013, 10:31:06 PM
    Author     : Praful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>FogComputing</title>
        <meta name="keywords" content="wooden strip, blog post page, multi-level comments, free templates, website templates, CSS, XHTML" />
        <meta name="description" content="Wooden Strip (multi-level commenting) - free blog theme (xhtml/css) provided by templatemo.com" />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
        <link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
        <script type="text/javascript" src="js/Validations.js"></script>
        <script type="text/javascript">
            function f1(data)
            {
                alert("me");
                /*  var count=1;
                for(var i=1;i<12;i++)
                {
                    document.data.que.value="que"+i;
                    alert(document.data.que.value);
                    if(document.data..value=="")
                    {
                        alert("ok");
                        return false;
                    }
                //alert(document.data.(document.data.que.value).value);
            }*/
            }
        </script>
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

                <h2>Useful Tips and Resources</h2>
                <p>Proin dui mauris, tempor eget, pulvinar sed, pretium sit amet, dui. Proin vulputate justo et quam. Cras nisl eros, elementum eu, iaculis vitae, viverra ut, ligula. Pellentesque metus.</p>

            </div>
        </div>

        <div id="templatemo_middle_wrapper1">

            <div id="content_wrapper1"> 
                <div class="content_box_top1"></div><div class="content_box1">

                    <div class="comment_tab">
                        <center>Fill The Answer of Following Question</center>
                    </div>


                    <center>
                        <div id="comment_form">
                            <form action="psychotestque.jsp" method="post" name="data" onsubmit="return f1(data);">
                                <table border="0">
                                    <thead>
                                        <tr>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1. What is first bike number?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que1" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td>2. What is your primary school name?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que2" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td>3. What is your wife name?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que3" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td>4. Who is your first teacher?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que4" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td>5. What is your office number?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que5" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td>6. Number of scar at your body?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que6" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td>7. What is your birth place?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que7" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td>8. What is first mobile number?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que8" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td>9. What is your first salary?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que9" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td>10. What is your grand Father name?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que10" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td>11. Did you remember your birth time,tell us?</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="que11" value="" size="40" /></td>
                                        </tr>
                                        <tr>
                                            <td><input type="submit" value="Submit" name="submit" /></td>
                                            <td><input type="hidden" name="que" value="" /></td>
                                        </tr>
                                    </tbody>
                                </table>


                            </form>

                        </div>
                    </center>

                </div><div class="content_box_bottom1"></div>

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
                        <li><a href="datastrationform.jsp">Blog Post</a></li>
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
<!--                Copyright © 2048 <a href="#">Your Company Name</a> | Designed by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>-->
            </div>
        </div>

    </body>
</html>
