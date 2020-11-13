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
                    <div class="icon-img-user">
                        <!--                    <img src="Picture/icon-login.png" style="
                                                                            width: 30px;
                                                                            height: 30px;
                                                                            border-radius: 100%;
                                                                            background-color: white;
                                                                            overflow: hidden;
                                                                            float: left;"> -->
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
                        <li class="active"><a href="Home.">Home</a></li>
                        <li><a href="Login.jsp">Classroom</a></li>
                        <li><a href="Login.jsp">Subject</a></li>
                        <li><a href="Login.jsp">Education</a></li>
                        <li><a href="Login.jsp">Contact</a></li>     
                        <li class="nav navbar-nav navbar-right">
                            <form class="form-inline my-2 my-lg-0" action="Search" method="GET">
                                <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
                            </form>
                            <!--                            <form class="navbar-form" action="Search" method="GET">
                                                            <div class="form-group" style="display:inline;">
                                                                <div class="input-group" style="display:table;">
                                                                    <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
                                                                    <input class="form-control" name="search" placeholder="Search Here" autocomplete="off" autofocus="autofocus" type="text">
                                                                    <button type="submit">Search</button>
                                                                </div>
                                                            </div>
                                                        </form>-->
                        </li>
                    </ul>
                    
                </div>

            </div>

        </nav>

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
            </ol>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Picture/p1.jpg" alt="Image" style="height: 400px; width: 1500px;">
                    <div class="carousel-caption">
                        <h3>Online</h3>
                        <p>Perfect learned</p>
                    </div>      
                </div>

                <div class="item" >
                    <img src="Picture/p2.jpg" alt="Image" style="height: 400px; width: 1500px;">
                    <div class="carousel-caption">
                        <h3>Online</h3>
                        <p>Perfect learned</p>
                    </div>
                </div>      
            </div>
        </div>

        <!-- Left and right controls -->

    </div>

    <div class="container text-center">    
        <div class="col-sm-4">
            <div class="card">
                <video width="320" height="240" controls  muted autoplay />
                <source src="Video/1.mp4" alt="video" >
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <video width="320" height="240" controls muted autoplay/>
                <source src="Video/2.mp4" alt="video" >
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <video width="320" height="240" controls muted autoplay />
                <source src="Video/4.mp4" alt="video" >
            </div>
        </div>

    </div><br>

    <footer class="container-fluid text-center">
        <div class="side-bottom">
                    <div class="side-bottom-icons">
                        <ul class="nav2">
                            <a target="_blank" href="Contact.jsp" title="ติดต่อเรา"> <h5 class="mt-10">ติดต่อเรา</h5></a>
                            
                            </ul>
                    </div>
                    <div class="copyright">
                        <p>Copyright © 2020 Tutor Online. All Rights Reserved | Design by <a href="Contact.jsp">TutorOnline</a></p>
                    </div>
                </div>
        
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
