<%-- 
    Document   : History
    Created on : Nov 14, 2020, 2:07:07 AM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>History</title>
    </head>
    <body>
    <c:forEach items="${vhu}" var="vhu">
            <div class="card-body">
                <h5 class="card-title">${vhu.videosVideoName}</h5>
            </div>
    </c:forEach>

</body>
</html>
