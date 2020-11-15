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
        <title>Tutor Online</title>
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


                    <a class="navbar-brand" href="index.jsp">Tutor Online</a>

                </div>

                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="Classroom">Classroom</a></li>
                        <li><a href="Subjects">Subjects</a></li>
                        <li><a href="Contact">Contact</a></li> 
                        <li class="active"><a href="History">History</a></li> 
                       
                    </ul>


                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Logout" >${us.fname} ${us.lname} <span class="glyphicon glyphicon-log-in"></span> &nbsp; Logout</a></a></li>
                    </ul>
                </div></div>

        </div>

    </nav>
    <h1 class="text-uppercase text-justify"><em><strong>&nbsp;Watched videos&nbsp;</strong></em></h1>
    
    <div class="col-xl-12"><hr></div>
    <table class="table">
        <thead>
            <tr> 
                    <th scope="col">#</th>
                    <th scope="col">Video Name</th>
                    <th scope="col">Username</th>
              </tr>
</thead>
<c:forEach items="${vhu}" var="vhu" begin="1" end="100" varStatus="loop">
    <tbody>
        <tr>
    <th scope="row">${loop.begin + loop.count - 1}</th>
    <td><a href="VDO?vd=${vhu.videosVideoName.videoName}">${vhu.videosVideoName}</a></td>
    <td> ${vhu.usersUsername}</td>
    <tr>

<!--            <h5>${loop.begin + loop.count - 1}</h5>
 <h5>${vhu.videosVideoName}</h5>
 <h5> ${vhu.usersUsername}</h5>-->

    <!--        <iframe width="560" height="315" src="https://youtube.com/embed/"
                    frameborder="0"  allowfullscreen>
            </iframe>-->
</c:forEach></tbody></table>
</body>
</html>
