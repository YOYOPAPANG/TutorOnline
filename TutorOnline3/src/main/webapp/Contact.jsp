<%-- 
    Document   : Home
    Created on : Oct 29, 2020, 8:40:32 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tutor Online</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */ 
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Add a gray background color and some padding to the footer */
            footer {
                background-color: #f2f2f2;
                padding: 25px;
            }

            .carousel-inner img {
                width: 100%; /* Set width to 100% */
                margin: auto;
                min-height:200px;
            }

            /* Hide the carousel text when the screen is less than 600 pixels wide */
            @media (max-width: 600px) {
                .carousel-caption {
                    display: none; 
                }
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>


                    <a class="navbar-brand" href="#">Tutor Online</a>

                </div>
                <div class="wrapper-login" style="width: 200px;
                     height: 30px;
                     margin-top: 15px;
                     float: right;
                     margin-right: 20px;">
                    <div class="icon-img-user"><img src="Picture/icon-login.png" style="
                                                    width: 30px;
                                                    height: 30px;
                                                    border-radius: 100%;
                                                    background-color: white;
                                                    overflow: hidden;
                                                    float: left;"> 
                    </div>

                    <a class="btn-login" href="Login.jsp" style="    
                       width: 54px;
                       font-family: 'TrueTextB';
                       font-size: 22px;
                       text-transform: capitalize;
                       color: #888888;
                       line-height: 30px;
                       cursor: pointer;
                       float: left;
                       margin-left: 10px;">login</a>

                    <div class="font-line-height" style="
                         width: 2px;
                         font-family: 'TrueTextB';
                         font-size: 24px;
                         text-transform: capitalize;
                         color: #888888;
                         line-height: 30px;
                         float: left;
                         margin-left: 12px;">   |</div>
                    <a class="btn-register" href="Register.jsp"style="
                       width: 54px;
                       font-family: 'TrueTextB';
                       font-size: 22px;
                       text-transform: capitalize;
                       color: #888888;
                       line-height: 30px;
                       cursor: pointer;
                       float: left;
                       margin-left: 10px;
                       }">register</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="Home.jsp">Home</a></li>
                        <li><a href="Login.jsp">Classroom</a></li>
                        <li><a href="Login.jsp">Subject</a></li>
                        <li><a href="Login.jsp">Education</a></li>
                        <li class="active"><a href="Login.jsp">Contact</a></li>     

                    </ul>
                </div>

            </div>

        </nav>

        <div style="text-align:center; width:1003px; background: url('images/MainBox/grey_index_center.jpg') repeat-y;">

            <div style="text-align:center;">

                <div style="text-align:center; vertical-align:top; float:left; overflow:hidden;width:243px; margin-top:10px; padding-left:4px;" id="MenuLeftAll">
                    <div align="right">

                        <table cellpadding="0" cellspacing="0" border="0">
                            <tbody><tr>
                                    <td align="center"> <img src="images/leftmenu/img_cntctus_01.gif" width="233" height="149" alt=""></td>
                                </tr>
                            </tbody></table>

                    </div><div style="height:10px; clear:both;"></div> 

                    <div style="padding-top:2px;">
                        <table cellpadding="0" cellspacing="0" border="0" style="width:100%;">
                        </table>
                    </div>


                    <div style="height:10px; clear:both;"></div> 
                    <div style="clear:both;"> </div>                            
                </div>




                <div style="text-align:left; vertical-align:top; float:right; overflow:hidden; width:735px; margin-top:10px; margin-left:8px; padding-right:8px;" id="MainBox">

                    <div style="width:735px;">

                        <table style="width:100%;" cellpadding="0" cellspacing="0" border="0">
                        </table>

                    </div>




                    <div>&nbsp;</div>

                    <div style="text-align:center; font-weight:bold;"><a href="./about_us.php" style="font-size:1.1em; font-weight:bold;">ติดต่อเจ้าหน้าที่</a> <span style="color:#ed1c24;">|</span> <a href="./activity_us.php" style="font-size:1.1em; font-weight:bold;">กิจกรรมของติวเตอร์</a> <span style="color:#ed1c24;">|</span> <a href="./contact_us.php" style="font-size:1.1em; font-weight:bold; color:#ed1c24;">รีวิวติวเตอร์ออนไลน์</a></div>

                    <div>&nbsp;</div>

                    <div>
                        <form name="frmContact" method="post" action="/true/contact_us.php" style="display:inline;">

                            <div style="width:735px;">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%;">
                                    <tbody><tr>
                                            <td style="width:3px; height:3px;"><img src="images/center/block_greybg_topleft.gif" alt=""></td>
                                            <td style="width:729px; height:3px; background-color:#f8f8f8;"> </td>
                                            <td style="width:3px; height:3px;"><img src="images/center/block_greybg_topright.gif" alt=""></td>
                                        </tr>
                                    </tbody></table>
                            </div>

                            <div style="width:735px; background-color:#f8f8f8;">

                                <div>
                                    <table width="90%" cellpadding="0" cellspacing="2" border="0">
                                        <tbody><tr>
                                                <td colspan="2" align="center" class="searchbox">
                                                    ในกรณีที่ท่านพบปัญหาในการใช้งาน หรือต้องการให้คำแนะนำ ติชม กรุณากรอกแบบฟอร์มด้านล่างนี้เพื่อติดต่อเจ้าหน้าที่</td>
                                            </tr>
                                            <tr><td colspan="2" align="center" class="searchbox">
                                                    ***กรุณาส่ง email มาที่ admin@tutoronline.com*** 
                                                </td></tr>
                                        </tbody></table>
                                </div>

                                <div>&nbsp;</div>

                                <div align="center">
                                    <table width="80%" cellpadding="0" cellspacing="0" border="0">
                                        <tbody><tr valign="top">
                                                <td align="left" width="300px" rowspan="2">
                                                    <span style="font-weight:bold; font-size: 15px;">089-999999999</span> <br>

                                                    <span id="shared">
                                                        <p>ช่องทางการติดต่อเพิ่มเติม</p>
                                                        <a target="_blank" href="http://www.facebook.com">http://www.facebook.com</a> <br>
                                                        <a target="_blank" href="http://www.twitter.com">http://www.twitter.com</a> <br>
                                                    </span>




                                                </td>

                                                <td align="left">
                                                    <span style="font-weight:bold;">ที่อยู่สำหรับติดต่อ</span> <br>
                                                    Tutor Online of Thailand <br>
                                                    11600  New Petchaburi Rd. <br>
                                                    Makkasan Sub-area <br>
                                                    Ratchathewi Area<br>
                                                    Krung Thep Maha Nakhon<br>
                                                    10400<br>
                                                    Thailand<br>


                                    </table>
                                </div>

                                <div>&nbsp;</div>


                                <div>&nbsp;</div>

                            </div>

                            <div style="width:735px;">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%;">
                                    <tbody><tr>
                                            <td style="width:3px; height:3px;"><img src="images/center/block_greybg_btmleft.gif" alt=""></td>
                                            <td style="width:729px; height:3px; background-color:#f8f8f8;"> </td>
                                            <td style="width:3px; height:3px;"><img src="images/center/block_greybg_btmright.gif" alt=""></td>
                                        </tr>
                                    </tbody></table>
                            </div>

                            <input type="hidden" name="doAction" value="">

                        </form>
                    </div>

                    <div>&nbsp;</div>
                </div>


                <div style="text-align:center; clear:both; width:1003px; height:7px; overflow: hidden; background: url('images/MainBox/grey_index_end.jpg') no-repeat;"></div>

            </div>

        </div>



        <footer class="container-fluid text-center">
            <p>Online Perfect Learned!!</p>

            <a id="gotop" href="#" title="Go Top" class="gotop" style="display: inline;"><i class="fa fa-chevron-up"></i><span>กลับด้านบน</span></a>
        </footer>
        <!-- <div class="ytp-cued-thumbnail-overlay" data-layer="4" style="">
             <div class="ytp-cued-thumbnail-overlay-image" style="background-image: url(&quot;https://www.youtube.com/watch?v=KqhW31L3GNo&ab_channel=%E0%B8%9E%E0%B8%B4%E0%B8%A1%E0%B8%A3%E0%B8%B5%E0%B9%88%E0%B8%9E%E0%B8%B2%E0%B8%A2;);">
                 
             </div><button class="ytp-large-play-button ytp-button" aria-label="Play">
                 <svg height="100%" version="1.1" viewBox="0 0 68 48" width="100%">
                 <path class="ytp-large-play-button-bg" 
                       d="M66.52,7.74c-0.78-2.93-2.49-5.41-5.42-6.19C55.79,.13,34,0,34,0S12.21,
                       .13,6.9,1.55 C3.97,2.33,2.27,4.81,1.48,7.74C0.06,13.05,0,24,0,24s0.06,10.95,1.48,
                       16.26c0.78,2.93,2.49,5.41,5.42,6.19 C12.21,47.87,34,48,34,48s21.79-0.13,27.1-1.55c2.93-0.78,4.
                       64-3.26,5.42-6.19C67.94,34.95,68,24,68,24S67.94,13.05,66.52,7.74z" fill="#f00"></path>
                 <path d="M 45,24 27,14 27,34" fill="#fff"></path>
                 </svg></button>
         </div>
        -->
    </body>
</html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <style>


    </style>
    <body>



        <div class="wrapper-login" style="width: 200px;
             height: 30px;
             margin-top: 15px;
             float: right;
             margin-right: 20px;">
            <div class="icon-img-user"><img src="Picture/icon-login.png" style="
                                            width: 30px;
                                            height: 30px;
                                            border-radius: 100%;
                                            background-color: white;
                                            overflow: hidden;
                                            float: left;"> 
            </div>

            <a class="btn-login" href="Login.jsp" style="    
               width: 54px;
               font-family: 'TrueTextB';
               font-size: 22px;
               text-transform: capitalize;
               color: #888888;
               line-height: 30px;
               cursor: pointer;
               float: left;
               margin-left: 10px;">login</a>

            <div class="font-line-height" style="
                 width: 2px;
                 font-family: 'TrueTextB';
                 font-size: 24px;
                 text-transform: capitalize;
                 color: #888888;
                 line-height: 30px;
                 float: left;
                 margin-left: 12px;">   |</div>
            <a class="btn-register" href="Register.jsp"style="
               width: 54px;
               font-family: 'TrueTextB';
               font-size: 22px;
               text-transform: capitalize;
               color: #888888;
               line-height: 30px;
               cursor: pointer;
               float: left;
               margin-left: 10px;
               }">register</a>
        </div>

    </body>
</html>-->
