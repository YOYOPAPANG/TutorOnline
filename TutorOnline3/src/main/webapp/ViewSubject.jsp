<%-- 
    Document   : ViewSubject
    Created on : Nov 15, 2020, 3:49:06 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Subject</title>
    </head>
    <body><nav class="navbar navbar-inverse">
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
    <h1>Hello World!</h1>
</body>
</html>
