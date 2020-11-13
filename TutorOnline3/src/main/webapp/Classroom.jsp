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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    </head>
    <body>
        <div id="templatemo_search">
            <form action="Serch" method="get">
                <input type="text" value="" name="search" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field">
                <input type="submit" name="search" value=" " alt="search" id="search" title="search" class="sub_btn">
            </form>
        </div>
        <div id="templatemo_main">

            <div id="content" class="float_r">
                <h1>Videos</h1>
                <c:forEach items="${videos}" var="vd">
                    <div class="product_box" >
                        <b> ${vd.videoName}</b>
                        <p>${vd.subjectsSubjectName}</p>
                        
                        <img src="http://img.youtube.com/vi/<youtube-video-id>/default.jpg"
                        <iframe width="560" height="315" src="${vd.videoURL}" 
                                frameborder="0"  allowfullscreen>
                        </iframe><br>
                        
                         
                    </div>        	



                </c:forEach>
            </div> 
            <div class="cleaner"></div>
        </div>
    </body>
</html>


