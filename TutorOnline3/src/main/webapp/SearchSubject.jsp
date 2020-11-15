<%-- 
    Document   : SearchSubject
    Created on : Nov 13, 2020, 3:35:43 AM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            body {
                background-color: #ffffff;
            }


            /* Add a gray background color and some padding to the footer */
            footer {
                background-color: #333333;
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
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="Classroom">Classroom</a></li>
                        <li><a href="Subjects">Subjects</a></li>
                        <li><a href="Contact">Contact</a></li> 
                        <li><a href="History">History</a></li> 
                        <li class="nav navbar-nav navbar-right">
                            <form class="form-inline my-2 my-lg-0" action="Search" method="GET">
                                <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search Subject" aria-label="Search">
                                <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
                            </form>
                            <!--                            <form class="navbar-form">
                                                                <div class="form-group" style="display:inline;">
                                                                    <div class="input-group" style="display:table;">
                                                                        <span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
                                                                        <input class="form-control" name="search" placeholder="Search Here" autocomplete="off" autofocus="autofocus" type="text">
                                                                    </div>
                                                                </div>
                                                            </form>-->
                        </li>
                    </ul>


                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Logout" >${us.fname} ${us.lname} <span class="glyphicon glyphicon-log-in"></span> &nbsp; Logout</a></a></li>
                    </ul>
                </div></div>

        </div>

    </nav>  
    <h1 class="text-uppercase text-justify"><em><strong>&nbsp;Search Subject&nbsp;</strong></em></h1>
    <div class="container-fluid">
        <div class="row">
            <c:forEach items="${subjects}" var="s">
                ${s.subjectName}
                <a href="Subjects?subject=${s.subjectName}">
                    <div class="card col-md-4 col-xl-2"> <img class="card-img-top rounded img-fluid" src="subject/${s.subjectName}.jpg " alt="Card image cap" width="250" height="250"> 
                        <div class="card-body">
                            <h5 class="card-title">${s.subjectName}</h5>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>              


    </div>
</body>
</html>
