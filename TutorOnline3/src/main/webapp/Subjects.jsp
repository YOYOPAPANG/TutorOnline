<%-- 
    Document   : Subjects
    Created on : Nov 11, 2020, 10:56:18 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject</title>
    </head>
    <body>
        <h1>Subjects</h1>
    <c:forEach items="${subjects}" var="sj">
        <b> ${sj.subjectName}</b>
        <b>${sj.educationsEducationName}</b>
    </c:forEach>
</body>
</html>
