

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>


<body class="main" background="<c:url value="/resources/images/login.jpg"/>"> 
<div class="login-screen"></div>
    <div class="container">
        <div class="container min-height" style="margin-top: 50px;">
        	<div class="row">
                <div class="col-xs-4 col-md-offset-3">
                    <div class="login" id="card">
                    	<div class="front signin_form"> 
                        <h3 align="center">Login Your Account</h3>
   				<form id="login-form" class="login-form" action="performLogin" method="POST" role="form">
                              <div class="form-group">
                                  <div class="input-group">
                                      <input type="text" name="username" id="username" class="form-control" placeholder="Type your username">
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-user"></i>
                                      </span>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <div class="input-group">
                                      <input type="password" class="form-control" id="password" name="password" placeholder="Type your password">
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-lock"></i>
                                      </span>
                                  </div>
                              </div>
                              <div class="checkbox">
                              <label><input type="checkbox">Remember me next time.</label>
                              </div>
                              
                              <div class="form-group sign-btn">
                                  <input type="submit" class="btn btn-success" value="Login">
                                  <br/>
                                  <br/>
                                <p><strong>New to this</strong><br/>
                                  <a id="flip-btn" class="btn btn-primary" href="<c:url value="/register"/>">Sign up for a new account</a>
                               </p>
                              </div>
                          </form>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                       
    </body>