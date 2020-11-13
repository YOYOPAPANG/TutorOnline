<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light"> 
    <a class="navbar-brand" href="index.jsp">Triple P</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"> 
        <span class="navbar-toggler-icon"></span> 
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent1">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active"> 
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a> 
            </li>
            <li class="nav-item"> 
                <a class="nav-link" href="AllProduct">All Product</a> 
            </li>
            <li class="nav-item dropdown"> 
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Genre </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown1"> 
                    <a class="dropdown-item" href="Genre?idGenre=1">Blues</a> 
                    <a class="dropdown-item" href="Genre?idGenre=2">Classic</a> 
                    <a class="dropdown-item" href="Genre?idGenre=3">Folk</a> 
                    <a class="dropdown-item" href="Genre?idGenre=4">Jazz</a> 

                </div>
            </li>
            <li class="nav-item dropdown"> 
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Contact </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown1"> 
                    <a class="dropdown-item" href="https://www.facebook.com/triplep.record">Facebook</a> 
                    <a class="dropdown-item" href="https://line.me/ti/p/0RUU21twuX">Line</a> 
                    <a class="dropdown-item" href="https://www.instagram.com/tripleprecord/">Instagram</a> 
                    <a class="dropdown-item" href="https://twitter.com/record_triple">Twitter</a> 
                    <a class="dropdown-item" href="#">Mail</a> 
                </div>
            </li>

            <li class="nav-item dropdown"> 
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Cart<img src="images/Cart.png" width="20" height="20"> </a>
                <div class="dropdown-menu">
                    <c:choose>
                        <c:when test="${cart== null}">
                            <a class="dropdown-item-text">You have no items in your shopping cart</a>
                        </c:when>
                        <c:otherwise>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <table class="table table-hover table-sm">
                                            <thead>
                                                <tr>
                                                    <th>Product</th>
                                                    <th>Price</th>
                                                </tr>
                                            </thead>
                                            <tbody style="font-size: 14px">
                                                <c:forEach items="${cart.lineItem}" var="p" varStatus="vs"> 
                                                <tr>
                                                    <td>${p.product.productsName}</td>
                                                    <td>${p.quantity}x<div style="color: #007bff">${p.product.buyPrice}</div></td>
                                                </tr>  
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </c:otherwise>
                    </c:choose>
                                
                    <a href="ViewCart" >view and edit cart</a>
                </div>
            </li>

        </ul>
        <form class="form-inline my-2 my-lg-0" action="Search" method="GET">
            <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
        </form>

        <a class="nav-link" href="${user==null ?'Login': user.userName}">${user==null ?'Login' : user.userName}</a> 
        | <a class="nav-link" href="${user==null ?'Register':'Logout'}">${user==null ?'Register' : 'Logout'}</a>   

    </div>
</nav>