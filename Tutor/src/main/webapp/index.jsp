<%-- 
    Document   : index
    Created on : Oct 26, 2020, 2:15:10 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <style>
        h1{
            text-align: center;
        }
        h2{
            text-align: center;
        }
        a{
            text-align: center;
        }
    </style>
    <body>
        <h1>Hello Sir.${us.fname} ${us.lname}</h1>
        <h2>Your ID : ${us.username}</h2>
        <h2>Your Password : ${us.password}</h2>
        <h2>Your email : ${us.email}</h2>
        <a href="Logout"/>Logout
        
    </body>
</html>
