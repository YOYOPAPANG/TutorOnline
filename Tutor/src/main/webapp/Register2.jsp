<%-- 
    Document   : Register2
    Created on : Oct 29, 2020, 7:52:02 AM
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
        
        <title>Register</title>
        <script>
            function validate()
            {
                var username = document.form.username.value;
                var password = document.form.password.value;
                var conpassword = document.form.conpassword.value;
                var firstname = document.form.firstname.value;
                var lastname = document.form.lastname.value;
                var email = document.form.email.value;

                if (username === null || username === "") {
                    alert("Username can't be blank");
                    return false;
                } else if (password.length < 6) {
                    alert("Password must be at least 6 characters long.");
                    return false;
                } else if (password !== conpassword) {
                    alert("Confirm Password should match with the Password");
                    return false;
                } else if (firstname === null || firstname === "") {
                    alert("Firstname can't be blank");
                    return false;
                } else if (lastname === null || lastname === "") {
                    alert("Lastname can't be blank");
                    return false;
                } else if (email === null || email === "") {
                    alert("Email can't be blank");
                    return false;
                }
            }
        </script> 
    </head>
    <body>
        <center><h2>Java Registration application using MVC and MySQL </h2></center>
        <form  action="Register2" method="post" onsubmit="return validate()">
            <table align="center">
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td><input type="password" name="conpassword" /></td>
                </tr>
                <tr>
                    <td>Firstname</td>
                    <td><input type="text" name="firstname" /></td>
                </tr>
                <tr>
                    <td>Lastname</td>
                    <td><input type="text" name="lastname" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" /></td>
                </tr>
                <tr>
                    <td><%=(request.getAttribute("errMessage") == null) ? ""
                                : request.getAttribute("errMessage")%></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Register"></input><input>
                            type="reset" value="Reset"></input></td>
                </tr>
            </table>
        </form>
    </body>
</html>
