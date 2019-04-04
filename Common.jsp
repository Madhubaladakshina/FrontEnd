<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
  <style>

  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  </style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-primary justify-content-center">
 
  <ul class="navbar-nav">
    
    <c:if test="${!sessionScope.loggedIn}">
    <li class="nav-item"><a class="nav-link" href="<c:url value="/Login"/>">Login</a></li>
    <li class="nav-item"><a class="nav-link" href="<c:url value="/About"/>">AboutUs</a></li>
    <li class="nav-item"><a class="nav-link" href="<c:url value="/contactus"/>">ContactUs</a></li>
    <li class="nav-item"><a class="nav-link" href="<c:url value="/performLogout"/>">Logout</a></li>
    </c:if>
    
    <c:if test="${sessionScope.loggedIn}">
 
       <c:if test="${sessionScope.role=='ROLE_ADMIN'}">
     <li class="nav-item"><a class="nav-link" href="<c:url value="/Category"/>">Category</a></li>
     <li class="nav-item"><a class="nav-link" href="<c:url value="/productt"/>">Product</a></li>
     </c:if>
      <c:if test="${sessionScope.role=='ROLE_USER'}">
     <li class="nav-item"><a class="nav-link" href="<c:url value="/Displayproduct"/>">ProductDisplay</a></li>
     <li class="nav-item"><a class="nav-link" href="<c:url value="/cart"/>">Cart</a></li>
     <li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Category</a>
     <div class="dropdown-menu">
     <c:forEach items="${datalist}" var="Category">
     <a class="dropdown-item" href="<c:url value="/categorywise/${category.categoryId}"/>">${category.categoryName}</a>
     </c:forEach>
     </div>
   </c:if>
   </c:if>
</ul>        

  
  <div class="nav navbar-nav navbar-right">
  <c:if test="${sessionScope.loggedIn}">
  <div id="userdetail">
  
  <font color="blue">Hi ${sessionScope.userName} Welcome To Shopping</font>
  <font color="blue">
  <a href="<c:url value="/performLogout"/>" class="btn btn-failure">Logout</a>
  </font>
  </div>
  </c:if>
  </div>
</nav>
<br>

</body>
</html>