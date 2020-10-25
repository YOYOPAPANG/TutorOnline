<%-- 
    Document   : Register
    Created on : Oct 26, 2020, 2:14:05 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Register</h1>
        <form action="Signup" method="post">
            <h3>Username
                <input type="text" name="Username" /> 
            </h3>
            <h3>Password
                <input type="password" name="Password" min="4" max="8" /> 
            </h3>
            <h3>Confirm Password
                <input type="password" name="Password" min="4" max="8" /> 
            </h3>
            <h3>Firstname
                <input type="text" name="Fname"  /> 
            </h3>
            <h3>Lastname
                <input type="text" name="Lname"  /> 
            </h3>
            <h3>E-mail
                <input type="email" name="Email"  /> 
            </h3>
            <input type="submit" value="Register" />
        </form>
        <br><br>
    </body>
</html>
