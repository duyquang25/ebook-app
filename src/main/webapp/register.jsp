<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Register</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/header.jsp"%>
	<div class="form-container">

		
	    <form action="register" method="post">
	        <h3>Register</h3>
	        <c:if test="${ not empty succMsg }">
            <p class="text-center text-success">${succMsg }</p>
            <c:remove var="succMsg" scope="session" />
	          </c:if>
	
	          <c:if test="${ not empty failedMsg }">
	            <p class="text-center text-danger">${failedMsg }</p>
	            <c:remove var="failedMsg" scope="session" />
	          </c:if>
	        <span>Full Name</span>
	        <input type="text" name="fname" class="box" placeholder="enter your name" id="exampleInputEmail1" >
	        <span>Email</span>
	        <input type="email" name="email" class="box" placeholder="enter your email" id="exampleInputEmail1" >
	        <span>PhoneNumber</span>
	        <input type="tel" name="phno" class="box" placeholder="enter your phone" id="exampleInputEmail1">
	        <span>Password</span>
	        <input type="password" name="password" class="box" placeholder="enter your password" id="exampleInputPassword1" >
	         <div class="form-check">
              <input
                type="checkbox"
                class="form-check-input"
                name="check"
                id="exampleCheck1"
              />
              <label class="form-check-label" for="exampleCheck1"
                >Agree terms - Condition</label
              >
            </div>
	        <input type="submit" value="Register" class="btn">
	        <p>You have an account ? <a href="login.jsp">Login now</a></p>
	    </form>
	
	</div>


	<%@include file="all_component/footer.jsp"%>
</body>
</html>