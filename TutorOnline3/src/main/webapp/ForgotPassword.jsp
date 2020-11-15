<%-- 
    Document   : test
    Created on : Nov 13, 2020, 12:35:24 PM
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
                                     color: #333;">Forgot Password</div>
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
                                        alert("รหัสผ่านตรงกัน ");
                                        return true;
                                    }
                                    

                                }
                            </script>
                            <form  action="ForgotPassword" method="POST" onsubmit="return myFunction()">
                                <div class="row pb-md-5" style="">
                                    <div class="col-12  border-right-md-1 pt-3 pb-2 pr-md-3">
                                        <div class="form-group form-group-feedback form-group-feedback-">
                                            <input type="text" name="Username" id="Username" class="form-control border-gray border" placeholder="Username" value="">
                                        </div>
                                        <div class="form-group form-group-feedback form-group-feedback-" >
                                            <input type="password" name="Password" id="Password" class="form-control border-gray border" placeholder="New Password" value="">
                                        </div>
                                        <div class="form-group form-group-feedback form-group-feedback-">
                                            <input type="password" name="NewPassword" id="Conpassword" class="form-control border-gray border" placeholder="Confirm Password" value="">
                                        </div>

                                        <div class="mx-auto">
                                            <!--<button type="submit" class="btn btn_grey_login py-1 btn-block">Sign in</button>-->
                                            <button type="submit" class="btn btn_grey_login py-1 btn-block" name ="ForgotPassword" style="border-radius: 5rem;
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
        </div></form>
</body>
</html>
