
 <%@include file="Common.jsp"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
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
<div class="container">
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul> 
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<c:url value="/resources/images/head5.jpg"/>" alt="shop" width="500" height="300">
    </div>
    <div class="carousel-item">
      <img src="<c:url value="/resources/images/images6.jpg"/>" alt="shopi" width="500" height="300">
    </div>
    <div class="carousel-item">
      <img src="<c:url value="/resources/images/shopping1.jpg"/>" alt="hifi" width="500" height="300">
    </div>
    <div class="carousel-item">
      <img src="<c:url value="/resources/images/shopping.jpg"/>" alt="New" width="500" height="300">
    </div>
  </div>
  
 
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

  </div>
</body>
</html>

