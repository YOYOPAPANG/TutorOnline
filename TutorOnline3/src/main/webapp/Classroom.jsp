<%-- 
    Document   : Classroom
    Created on : Oct 29, 2020, 8:49:01 PM
    Author     : ASUS
--%>

<%@page import="java.sql.Statement"%>
<%@page import="javax.jms.ConnectionFactory"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Classroom</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css"/>
        <link href="css/ddsmoothmenu.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/ddsmoothmenu.js" type="text/javascript"></script>
    </head>-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Classroom</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */ 
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }
            body {
                background-color: #ffffff;
            }


            /* Add a gray background color and some padding to the footer */
            footer {
                background-color: #333333;
                padding: 25px;

            }

            .carousel-inner img {
                width: 100%; /* Set width to 100% */
                margin: auto;
                min-height:200px;
            }

            /* Hide the carousel text when the screen is less than 600 pixels wide */
            @media (max-width: 600px) {
                .carousel-caption {
                    display: none; 
                }
            }
        </style>
    </head>
    <body>

         <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>


                    <a class="navbar-brand" href="index.jsp">Tutor Online</a>

                </div>

                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="Classroom">Classroom</a></li>
                        <li><a href="Subjects">Subjects</a></li>
                        <li><a href="Contact">Contact</a></li> 
                        <li><a href="History">History</a></li> 
                        <li class="nav navbar-nav navbar-right">
                            <form class="form-inline my-2 my-lg-0" action="Search" method="GET">
                                <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search Subject" aria-label="Search">
                                <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
                            </form>
                            <!--                            <form class="navbar-form">
                                                                <div class="form-group" style="display:inline;">
                                                                    <div class="input-group" style="display:table;">
                                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
                                                                        <input class="form-control" name="search" placeholder="Search Here" autocomplete="off" autofocus="autofocus" type="text">
                                                                    </div>
                                                                </div>
                                                            </form>-->
                        </li>
                    </ul>


                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Logout" >${us.fname} ${us.lname} <span class="glyphicon glyphicon-log-in"></span> &nbsp; Logout</a></a></li>
                    </ul>
                </div></div>

        </div>

    </nav>

    <div id="templatemo_search">
        <form class="form-inline my-2 my-lg-0" action="SearchVideos" method="GET">
            <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search Video" aria-label="Search">
            <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
    <div id="templatemo_main">

        <div id="content" class="float_r">
            <h1>Videos</h1>
            <c:forEach items="${videos}" var="vd">
                <div class="product_box" >
                    <b> ${vd.videoName}</b>
                    <p>${vd.subjectsSubjectName}</p>

                    <a href="VDO?vd=${vd.videoName}">

                        <img src="http://img.youtube.com/vi/${vd.videoURL}/default.jpg"/>
        <!--                     <iframe width="560" height="315" src="${vd.videoURL}" 
                             frameborder="0"  allowfullscreen>
                        </iframe><br>-->

                    </a>
                </div>        	



            </c:forEach>
        </div> 
        <div class="cleaner"></div>
    </div>

    <footer class="container-fluid text-center">
        <p>Online Perfect Learned!!</p>
        <a target="_blank" href="Contact.jsp" title="ติดต่อเรา"> <h5 class="mt-10">ติดต่อเรา</h5></a>
        <a id="gotop" href="#" title="Go Top" class="gotop" style="display: inline;"><i class="fa fa-chevron-up"></i><span>กลับด้านบน</span></a>
    </footer>
    <!-- <div class="ytp-cued-thumbnail-overlay" data-layer="4" style="">
         <div class="ytp-cued-thumbnail-overlay-image" style="background-image: url(&quot;https://www.youtube.com/watch?v=KqhW31L3GNo&ab_channel=%E0%B8%9E%E0%B8%B4%E0%B8%A1%E0%B8%A3%E0%B8%B5%E0%B9%88%E0%B8%9E%E0%B8%B2%E0%B8%A2;);">
             
         </div><button class="ytp-large-play-button ytp-button" aria-label="Play">
             <svg height="100%" version="1.1" viewBox="0 0 68 48" width="100%">
             <path class="ytp-large-play-button-bg" 
                   d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,
                   .13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,
                   16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.
                   64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00"></path>
             <path d="M 45,24 27,14 27,34" fill="#fff"></path>
             </svg></button>
     </div>
    -->
</body>

<!--    <body>
--><!--
</body>-->
</html>


