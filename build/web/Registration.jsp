<%-- 
    Document   : Registration
    Created on : May 10, 2013, 2:59:48 AM
    Author     : Praful
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html"%>
<%@page import="java.sql.*"%>
<%@page import="DAL.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>FogComputing</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />

        <link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-ptsans.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/coin-slider.min.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.ennui.contentslider.js"></script>
        <script type="text/javascript" src="js/Validations.js"></script>
        <script type="text/javascript" src="js/jquery.photo.upload.js"></script>
        <script type="text/javascript" src="js/avebility.js"></script>
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
                            <li class="active"><a href="Registration.jsp"><span>Registration</span></a></li>
                            <li><a href="Login.jsp"><span>Login</span></a></li>

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

                        <div class="article1">
                            <p class="infopost1" align="center"> Registration Form </p>
                            <div class="clr"></div>

                            <form name="regi" method="post" action="Registred.jsp" onsubmit="return f1(regi);">        
                                <div id="one" class="contentslider">
                                    <div class="cs_wrapper">
                                        <div class="cs_slider">

                                            <div class="cs_article">

                                                <table border="0" >

                                                    <tr>
                                                        <th colspan="4"><h1>Personal Details</h1></th>

                                                    </tr>

                                                    <tr>
                                                        <td>Title<sup>*</sup></td>
                                                        <td>First Name<sup>*</sup></td>
                                                        <td>Father Name<sup>*</sup></td>
                                                        <td>Last Name<sup>*</sup></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <select name="title">
                                                                <option>Title</option>
                                                                <option>Mr.</option>
                                                                <option>Mrs.</option>
                                                                <option>Ms.</option>
                                                            </select>
                                                        </td>
                                                        <td><input type="text" name="fname" value="" size="20" onkeyup="isLettersOnly(this)"/></td>
                                                        <td><input type="text" name="midname" value="" size="20" onkeyup="isLettersOnly(this)"/></td>
                                                        <td><input type="text" name="lastname" value="" size="20" onkeyup="isLettersOnly(this)"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mother Name<sup>*</sup></td>
                                                        <td><input type="text" name="moname" value="" size="20" onkeyup="isLettersOnly(this)"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2">Date Of Birth<sup>*</sup>
                                                            <select name="day">
                                                                <option>Day</option>
                                                                <%for (int i = 1; i <= 31; i++) {
                                                                %>
                                                                <option><%=i%></option>
                                                                <%
                                                                    }
                                                                %>
                                                            </select>
                                                            <select name="month">
                                                                <option>Month</option>
                                                                <%for (int i = 1; i <= 12; i++) {
                                                                %>
                                                                <option><%=i%></option>
                                                                <%
                                                                    }
                                                                %>
                                                            </select>
                                                            <select name="year">
                                                                <option>Year</option>
                                                                <%for (int i = 2013; i >= 1913; i--) {
                                                                %>
                                                                <option><%=i%></option>
                                                                <%
                                                                    }
                                                                %>
                                                            </select></td>

                                                    </tr>
                                                    <tr>
                                                        <td>Gender<sup>*</sup></td>
                                                        <td><input type="radio" name="gender" value="Male" onclick="radiobutton = 'male'"/>Male&nbsp;&nbsp;&nbsp;
                                                            <input type="radio" name="gender" onclick="radiobutton = 'female'"/>Female
                                                            <input type="hidden" name="gender1" value="" size="10" /></td>
                                                        <td>Married<sup>*</sup>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <input type="radio" name="married" value="Yes" onclick="radiobutton1 = 'yes'"/>Yes
                                                            <input type="radio" name="married" onclick="radiobutton1 = 'no'"/>No
                                                            <input type="hidden" name="married1" value="" size="10" /></td>

                                                    </tr>                                               
                                                    <tr>
                                                        <td>PAN card No.<sup>*</sup></td>
                                                        <td colspan="1"><input type="text" name="pan" value="" size="20" maxlength="10"/>
                                                        </td>

                                                        <td> Aadhar card No.<sup>*</sup></td>
                                                        <td><input type="text" name="aadhar" value="" size="20" onkeyup="isNumber(this)" maxlength="12"/></td>
                                                    </tr>
<!--                                                    <tr>
                                                        <td>Insert Your Photo</td>
                                                        <td colspan="2">
                                                            <input name="img" type='file' onchange="readURL(this);" /></td>
                                                        <td><img id="img_prev" src="#" alt="your image" /></td>
                                                    </tr>-->
                                                    <tr>
                                                        <td colspan="3"><font color="red">(Fields marked with * are mandatory.)</font></td>
                                                    </tr>

                                                </table>
                                            </div>
                                            <div class="cs_article">

                                                <table border="0" >

                                                    <tr>
                                                        <th colspan="4"><h1>Contact Details</h1></th>

                                                    </tr>

                                                    <tr>
                                                        <td>Address<sup>*</sup></td>
                                                        <td colspan="4"><textarea name="address" rows="1" cols="51"></textarea></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mo.No.<sup>*</sup></td>
                                                        <td><input type="text" name="mono" value="" size="20" onkeyup="isNumber(this)"/></td>
                                                        <td>Ph.No.<sup>*</sup></td>
                                                        <td><input type="text" name="phno" value="" size="20" onkeyup="isNumber(this)"/></td>
                                                    </tr> 

                                                    <tr>
                                                        <td>E-mail<sup>*</sup></td>
                                                        <td><input type="text" id="email" name="email" value="" size="20" /></td>
                                                        <td>Country<sup>*</sup></td>
                                                        <td><select name="country">
                                                                <option>India</option>
                                                            </select></td>
                                                    </tr>
                                                    <tr>
                                                        <td>State<sup>*</sup></td>
                                                        <td>
                                                            <select name="state">
                                                                <option>Select State</option>
                                                                <option>Andaman and Nicobar</option>
                                                                <option>Andhra Pradesh</option>
                                                                <option>Arunachal Pradesh</option>
                                                                <option>Assam</option>
                                                                <option>Bihar</option>
                                                                <option>Chandigarh</option>
                                                                <option>Chhattisgarh</option>
                                                                <option>Nagar Haveli</option>
                                                                <option>Daman and Diu </option>
                                                                <option>Delhi</option>
                                                                <option>Goa</option>
                                                                <option>Gujarat</option>
                                                                <option>Haryana</option>
                                                                <option>Himachal Pradesh</option>
                                                                <option>Jammu and Kashmir</option>
                                                                <option>Jharkhand</option>
                                                                <option>Karnataka</option>
                                                                <option>Kerala</option>
                                                                <option>Lakshadweep</option>
                                                                <option>Madhya Pradesh</option>
                                                                <option>Maharashtra</option>
                                                                <option>Manipur</option>
                                                                <option>Meghalaya</option>
                                                                <option>Mizoram</option>
                                                                <option>Nagaland</option>
                                                                <option>Odisha</option>
                                                                <option>Puducherry</option>
                                                                <option>Punjab</option>
                                                                <option>Rajasthan</option>
                                                                <option>Sikkim</option>
                                                                <option>Tamil Nadu</option>
                                                                <option>Tripura</option>
                                                                <option>Uttar Pradesh</option>
                                                                <option>Uttarakhand</option>
                                                                <option>West Bengal</option>

                                                            </select></td>
                                                        <td>District<sup>*</sup></td>
                                                        <td><input type="text" name="district" value="" size="20" onkeyup="isLettersOnly(this)"/></td>

                                                    </tr>
                                                    <tr>
                                                        <td>Taluka<sup>*</sup></td>
                                                        <td><input type="text" name="taluka" value="" size="20" onkeyup="isLettersOnly(this)"/></td>
                                                        <td>Pincode<sup>*</sup></td>
                                                        <td><input type="text" name="pincode" value="" size="20" onkeyup="isNumber(this)"/></td>
                                                    </tr>

                                                    <tr>
                                                        <td colspan="3"><font color="red">(Fields marked with * are mandatory.)</font></td>
                                                    </tr>

                                                </table> 

                                            </div>
                                            <div class="cs_article">

                                                <table border="0">

                                                    <tbody>
                                                        <tr>
                                                            <th colspan="4"><h1>Login Details</h1></th>
                                                        </tr>
                                                        <tr>
                                                            <td>Login Name<sup>*</sup></td>
                                                            <td><input type="text" class="uname" name="loginname" size="20" autocomplete="off" /></td>
                                                            <td><span class="status"></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">E-Mail ID use as Login Name <input type="checkbox" id="loginemail" name="loginemail" value="ON" onchange="logname(this);"/></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Login Password<sup>*</sup></td>
                                                            <td><input type="password" name="password" value="" size="20" /></td>
                                                            <td>confirm Password<sup>*</sup></td>
                                                            <td><input type="password" name="password1" value="" size="20" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                                <input type="checkbox" name="TermsOfService" size="10" value="yes" id="TermsOfService" onclick="if (!this.form.TermsOfService.checked) {
                                                                            alert('You must agree to the terms first.');
                                                                            return false
                                                                        }"/>
                                                                <strong>I agree to the <a id="TosLink" href="" onclick="term();">Terms of Service and Privacy Policy</a></strong>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="4" align="center">
                                                                <input class="button_submit" type="submit" value="" name="submit" />
                                                                <input class="button_reset" type="reset" value="" name="reset" /></td>
                                                        </tr>


                                                    </tbody>
                                                </table>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(function() {
                                        $('#one').ContentSlider({
                                            width: '920px',
                                            height: '250px',
                                            speed: 400,
                                            easing: 'easeOutSine'
                                        });
                                    });
                                </script>

                                <div class="clr"></div>
                            </form>
                        </div>
<!--                        <div class="article">
                            <h2><marquee><span>Lets Make-Up with Intruder,</span> And , Hang Over It</marquee></h2>
                            <p class="infopost">Posted <span class="date">on 11 sep 2018</span> by <a href="#">Admin</a> &nbsp;&nbsp;|&nbsp;&nbsp; Filed under <a href="#">templates</a>, <a href="#">internet</a> <a href="#" class="com">Comments <span>(11)</span></a></p>
                            <div class="clr"></div>
                            <div class="img"><img src="images/img1.jpg" width="179" height="215" alt="" class="fl" /></div>
                            <div class="post_content">
                                <p>Intruder detection system <a href="#"></a><br>An Intrusion Detection System is an important part of the Security Management  system for computers and networks that tries to detect break-ins or break-in attempts.</p>
                                <p><strong>Intrusion detection is a technique of detecting unauthorized access to a computer system or a computer network.An intrusion into a system is an attempt by an outsider to the system to illegally gain access to the system. 
                                        The goal of an IDS is to detect malicious traffic.Designed to detect instances of the access of computer  systems by unauthorized individuals and the misuse of system resources by authorized system users.</strong>
                                    <br>There are the present working systems are here as:<br>
                                            <strong>Network-based IDS:</strong><br>Network-based IDSs are mostly passive devices that monitor ongoing network activity without adding significant overhead or interfering with network operation. They are easy to secure against attack and may even be undetectable to attackers; they also require little effort to install and use on existing networks.
                                                <br><strong>Host-based IDS:</strong><br> Host-based IDS can analyze activities on the host it monitors at a high level of detail; it can often determine which processes and/or users are involved in malicious activities. Application-based IDS :
                                                        An application-based IDS concentrates on events occurring within some specific application. They often detect attacks through analysis of application log files and can usually identify many types of attack or suspicious activity.
                                                        <strong><br>Signature-based IDS :</strong><br>A signature-based IDS examines ongoing traffic, activity, transactions, or behavior for matches with known patterns of events specific to known attacks.</p>
                                                            <p class="spec"><a href="#" class="rm">Read more &raquo;</a></p>
                                                            </div>
                                                            <div class="clr"></div>

                                                            </div>
                                                            <p class="pages"><small>Page 1 of 2</small> <span>1</span> <a href="#">2</a> <a href="#">&raquo;</a></p>-->
                                                            </div>
                                                            <div class="sidebar">
<!--                                                                <div class="searchform">
                                                                    <form id="formsearch" name="formsearch" method="post" action="#">
                                                                        <span>
                                                                            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
                                                                        </span>
                                                                        <input name="button_search" src="images/search.gif" class="button_search" type="image" />
                                                                    </form>
                                                                </div>-->
                                                                <div class="clr"></div>
<!--                                                                <div class="gadget">
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
<!--                                                            <div class="fbg">
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
<!--                                                                    <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
                                                                    <p class="rf">Design by Dream <a href="http://www.dreamtemplate.com/">Web Templates</a></p>-->
                                                                    <div style="clear:both;"></div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                            <!--<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>-->
                                                            </html>
