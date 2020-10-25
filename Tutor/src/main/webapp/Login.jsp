<%-- 
    Document   : Login
    Created on : Oct 26, 2020, 1:46:33 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap-4.5.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div style="margin-left: 100px">
            <form class="form-control" action="Login" method="POST">

                <tr style="height: 50px">
                    <td>Username: </td>
                    <td><input type="text" name ="Username" /></td>

                </tr>
                <tr style="height: 50px">
                    <td>Password: </td>
                    <td><input type="password" name ="Password"/></td>

                </tr>
                <tr style="height: 50px">
                    <td></td>
                    <td><input type="submit" name ="Login"/></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <br><br>
                Don’t have an account? <a class="highlight" href="Register.jsp">Register</a><br>
                <br><br>
            </form>

        </div>
    </body>
</html>
