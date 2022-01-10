<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Login</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="all_component/header.jsp"%>
	
		
	<div class="form-container">

		
		    <form action="login" method="post">
		        <h3>Log in</h3>
		        
		        <c:if test="${ not empty succMsgLogout }">
	            <p class="text-center text-success">${succMsgLogout }</p>
	            <c:remove var="succMsgLogout" scope="session" />
		         </c:if>
		        <span>Email</span>
		        <input type="email" name="email" class="box" placeholder="enter your email" id="exampleInputEmail1" required>
		        <span>password</span>
		        <input type="password" name="password" class="box" placeholder="enter your password" id="exampleInputPassword1" required>
		        <div class="checkbox">
		            <input type="checkbox" name="" id="remember-me">
		            <label for="remember-me"> remember me</label>
		        </div>
		        <input type="submit" value="sign in" class="btn">
		        <p>don't have an account ? <a href="register.jsp">create one</a></p>
		    </form>
	
		</div>
		
	<%@include file="all_component/footer.jsp"%>
</body>
</html>
