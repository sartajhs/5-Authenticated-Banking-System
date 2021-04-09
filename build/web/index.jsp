


<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DAL.MyAdo"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>FogComputing</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-ptsans.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/coin-slider.min.js"></script>
    </head>
    <body>
        <div class="main">
            <div class="header">
                <div class="header_resize">
                    <div class="logo">
                        <h1><a href="index.html"><span>FogComputing</span> <font size="3"></font></a></h1>
                    </div>
                    <div class="menu_nav">
                        <ul>
                            <li class="active"><a href="index.jsp"><span>Home Page</span></a></li>
                            <li><a href="Registration.jsp"><span>Registration</span></a></li>
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
                        <div class="article">
                            <h2><span>On Bank Transactions</span></h2>
                            <p class="infopost"> <span class="date"></span><span></span></a></p>
                            <div class="clr"></div>
                            <div class="img"><img src="images/img11.jpg" width="179" height="215" alt="" class="fl" /></div>
                            <div class="post_content">
                                <p>Fog Computing are an important component of defensive measures protecting computer systems and networks from abuse. This article considers the role of FogComputings in an organization’s overall defensive posture and provides guidelines for FogComputing deployment, operation, and maintenance.</p>
                                <p><strong>Before an organization invests in security
                                        technologies, it must understand which of
                                        its assets require protection and determine
                                        the real and perceived threats against those
                                        assets. We can characterize threats by the
                                        likely type of attack and attacker capabilities
                                        (that is, resources and goals) and the organization’s
                                        tolerance for loss of, damage
                                        to, or disclosure of protected assets.
                                        Attacker motives can be arbitrary (curiosity
                                        or vandalism) or targeted to meet a specific
                                        objective such as revenge or gaining a
                                        competitive advantage. Motives can make
                                        some forms of attack more likely than others.
                                        Gaining a competitive advantage might require
                                        compromising specific information 
                                    </strong></p>
                                <!--<p class="spec"><a href="#" class="rm">Read more &raquo;</a></p>-->
                            </div>
                            <div class="clr"></div>
                        </div>
                        <div class="article">
                            <h2><span>We'll Make Sure FogComputing</span> Works For You</h2>
                            <p class="infopost"><span class="date"><span></span></a></p>
                            <div class="clr"></div>
                            <div class="img"><img src="images/img22.jpg" width="179" height="215" alt="" class="fl" /></div>
                            <div class="post_content">
                                <p>FogComputing is only one aspect of a layered defensive
                                    posture or “defense in depth.” Defense
                                    in depth begins with the establishment of appropriate
                                    and effective security policies. Effective
                                    policies help ensure that threats to
                                    critical assets are understood, managers and
                                    users are adequately trained, and actions to
                                    be taken when an intrusion is identified are
                                    defined. A good security policy puts ID in its
                                    proper perspective and context. Whenever
                                    possible, the policy should reflect the mission
                                    of the organization that promulgates it.
                                    Therefore, it should codify the rules governing
                                    enterprise operations as they are reflected
                                    in its information infrastructure and should
                                    explicitly exclude activities or operations not
                                    needed to support the enterprise’s mission. A
                                    mission-oriented security policy can aid in
                                    configuring both firewalls and FogComputings.9

                                </p>
                                <p><strong>Establishing a layered security architecture
                                        is advantageous whether an FogComputing is deployed
                                        or not. In addition to formulating a security
                                        policy, the essential steps consist of implementing
                                        user authentication and access controls,
                                        eliminating unnecessary services, applying
                                        patches to eliminate known vulnerabilities,
                                        deploying firewalls, using file integrity
                                        checking tools such as Tripwire, and so forth.
                                        Because most real-time commercial FogComputings base
                                        their detection approach on known attempts
                                        to exploit known vulnerabilities, an administrator’s
                                        time is often better spent minimizing
                                        vulnerability through the application of
                                        patches or other security measures.
                                        used as a base to attack the inside.
                                        If we assume that the protected enterprise
                                        is mission-oriented and only runs a
                                        limited set of applications and protocols, we
                                        can configure the inner sensor to recognize
                                        as intrusive any unexpected protocols.</strong></p>
                                 </div>
                            <div class="clr"></div>
                        </div>
                            </div>
                    <div class="sidebar">
      <div class="clr"></div>
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
                </div>
                <div class="clr"></div>
            </div>
        </div>

        <div class="footer">
            <div class="footer_resize">
               <div style="clear:both;"></div>
            </div>
        </div>
        </div>
        <div align=center></div></body>
</html>
