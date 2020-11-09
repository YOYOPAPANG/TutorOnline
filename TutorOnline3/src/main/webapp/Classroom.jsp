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
<%@page import="Java.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Classroom</title>
    </head>
    <body>
        hello<br>
            <c:forEach items="${videos}" var="vd">
            <td>${vd.videoName}</td><br>
            <video width="320" height="240" controls autoplay loop>
            <source src="${vd.videoURL}">
         </video><br>
          
                    <td>${vd.subjectsSubjectName}</td>
            </c:forEach>

    </body>
</html>

