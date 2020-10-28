<%-- 
    Document   : Home
    Created on : Oct 26, 2020, 3:16:08 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
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
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">Classroom</a></li>
                        <li><a href="#">Education</a></li>
                        <li><a href="#">Knowledge</a></li>
                        <li><a href="#">Contact</a></li>     

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
                    <img src="Picture/p1.jpg" alt="Image" style="height: 600px; width: 1500px;">
                    <div class="carousel-caption">
                        <h3>Online</h3>
                        <p>Perfect learned</p>
                    </div>      
                </div>

                <div class="item" >
                    <img src="Picture/p2.jpg" alt="Image" style="height: 600px; width: 1500px;">
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
        <h3>What We Do</h3><br>
        <div class="row">
            <div class="col-sm-4">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
                <p>Current Project</p>
            </div>
            <div class="col-sm-4"> 
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
                <p>Project 2</p>    
            </div>
            <div class="col-sm-4">
                <div class="well">
                    <p>Some text..</p>
                </div>
                <div class="well">
                    <p>Some text..</p>
                </div>
            </div>
        </div>
    </div><br>

    <footer class="container-fluid text-center">
        <p>Footer Text</p>
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
