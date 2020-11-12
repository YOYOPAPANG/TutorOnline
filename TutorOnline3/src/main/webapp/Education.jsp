<%-- 
    Document   : Education
    Created on : Nov 12, 2020, 5:37:44 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Education</title>
    </head>
    <body>
        <c:forEach items="${educations}" var="ed">
            ${ed.educationName}<br>
        </c:forEach>
    </body>
</html>
