<%-- 
    Document   : Register
    Created on : Oct 29, 2020, 8:42:10 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutor Online</title>
        <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="bootstrap-4.5.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>



        <div class="container" style="    
             width: 100%;
             padding-right: 20px;
             padding-left: 20px;
             margin-right: auto;
             margin-left: auto;
             text-align: center;">

            <div style='position:absolute;zindex:0;left:0;top:0;width:100%;height:100%'>
                <img src='Picture/m1.jpg' style='width:100%;height:100%' alt='[]' />
            </div>

            <div class="row  p-md-5 bg_grey_f8" style="display: -webkit-box;
                 display: -ms-flexbox;
                 display: flex;
                 -ms-flex-wrap: wrap;
                 flex-wrap: wrap;
                 margin-right: -10px;
                 margin-left: -10px;">
                <div class="col-lg-8 offset-lg-2" style="position: relative;
                     min-height: 1px;
                     padding-right: 10px;
                     padding-left: 10px;">
                    <div class="card mb-0" style="margin-bottom: 0!important">
                        <div class="card-body pt-md-5 px-md-5" style="position: relative;
                             display: -ms-flexbox;
                             display: flex;
                             -ms-flex-direction: column;
                             flex-direction: column;
                             min-width: 0;
                             word-wrap: break-word;
                             background-color: #FFFAFA;
                             background-clip: border-box;
                             border: 1px solid rgba(0,0,0,.125);
                             border-radius: .25rem;">
                            <div class="text-center mb-2 mb-md-4" ">
                                <div class="mb-0 txt_headwelcome" style="    font-size: 40px;
                                     color: #333;">Register</div>
                            </div>
                            <script>
                                function myFunction() {
                                    var Username = document.getElementById("Username").value;
                                    if (Username === null || Username === "") {
                                        alert("กรุณากรอก Username");
                                        return false;
                                    }
                                    var Password = document.getElementById("Password").value;
                                    var Conpassword = document.getElementById("Conpassword").value;
                                    if (Password !== Conpassword) {
                                        alert("รหัสผ่านไม่ตรงกัน");
                                        return false;
                                    } else {
                                        alert("สมัครสำเร็จ ");
                                        return true;
                                    }
                                    var Firstname = document.getElementById("Firstname").value;
                                    if (Firstname === null || Firstname === "") {
                                        alert("กรุณากรอก Firstname");
                                        return false;
                                    }
                                    var Lastname = document.getElementById("Lastname").value;
                                    if (Lastname === null || Lastname === "") {
                                        alert("กรุณากรอก Lastname");
                                        return false;
                                    }
                                    var Email = document.getElementById("Email").value;
                                    if (Email === null || Email === "") {
                                        alert("กรุณากรอก Email");
                                        return false;
                                    }

                                }
                            </script>

                            <form  action="Register" method="POST" onsubmit="return myFunction()">

                                <div class="row pb-md-5" style="">
                                    <div class="col-12  border-right-md-1 pt-3 pb-2 pr-md-3">
                                        <div class="form-group form-group-feedback form-group-feedback-right" >
                                            <input type="text" name="Username" id="Username" class="form-control border-gray border" placeholder="Username" value="" required=""  >
                                        </div>

                                        <div class="form-group form-group-feedback form-group-feedback-">
                                            <input type="password" name="Password" id="Password" class="form-control border-gray border" placeholder="Password" value="" required="">
                                        </div>

                                        <div class="form-group form-group-feedback form-group-feedback-">
                                            <input type="password" name="Confirm Password" id="Conpassword" class="form-control border-gray border" placeholder="Confirm Password" value="" required="">
                                        </div>

                                        <div class="form-group form-group-feedback form-group-feedback-right" >
                                            <input type="text" name="Fname" id="Firstname" class="form-control border-gray border" placeholder="Firstname" value="" required="" >
                                        </div>

                                        <div class="form-group form-group-feedback form-group-feedback-right" >
                                            <input type="text" name="Lname" id="Lastname" class="form-control border-gray border" placeholder="Lastname" value="" required="" >
                                        </div>

                                        <div class="form-group form-group-feedback form-group-feedback-right" >
                                            <input type="email" name="Email" id="Email" class="form-control border-gray border" placeholder="E-mail" value="" required=""  >
                                        </div>
                                       
                                        <div class="mx-auto">

                                            <button type="submit" class="btn btn_grey_login py-1 btn-block" name ="Register" style="border-radius: 5rem;
                                                    font-size: 1.2rem;
                                                    padding: .1375rem .875rem;
                                                    color: #FFF;
                                                    background-color: #D4D4D4;
                                                    border: 1px solid #D4D4D4;">Submit</button>

                                        </div>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>              
                </div>
            </div>
        </div>

        <!--
                           -----------------------------------------------------------------------       -->      



        <!--    <center><h2>Java Registration application using MVC and MySQL </h2></center>
            <form  action="Register" method="post" onsubmit="return validate()" >
                <table align="center">
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="Username" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="Password" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="conpassword" /></td>
                    </tr>
                    <tr>
                        <td>Firstname</td>
                        <td><input type="text" name="Fname" /></td>
                    </tr>
                    <tr>
                        <td>Lastname</td>
                        <td><input type="text" name="Lname" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="Email" /></td>
                    </tr>
                    <tr>
                            <td><%=(request.getAttribute("errMessage") == null) ? ""
                                    : request.getAttribute("errMessage")%></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Register"></input></td>
                    </tr>
                </table>
            </form>-->
    </body>
</html>

