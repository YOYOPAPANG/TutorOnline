<%-- 
    Document   : SearchSubject
    Created on : Nov 13, 2020, 3:35:43 AM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body style="padding-top: 70px">
        <h1 class="text-uppercase text-justify"><em><strong>&nbsp;Search&nbsp;</strong></em></h1>



        <div class="container-fluid">
            <div class="row">
                <c:forEach items="${subjects}" var="s">
                    <div class="card col-md-4 col-xl-2"> <img class="card-img-top rounded img-fluid" src="subject/${s.subjectName}.jpg " alt="Card image cap" width="250" height="250"> 
                        <div class="card-body">
                            <h5 class="card-title">${s.subjectName}</h5>
                            <h5 class="card-title">${s.educationsEducationName}</h5>
                        </div>
                    </div>
                </c:forEach>
            </div>              


        </div>
    </body>
</html>
