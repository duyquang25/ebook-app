<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<%@include file="all_component/allCss.jsp"%>

</head>
<body style="background-color: #f0f1f2;">


	
	
<%@include file="all_component/header.jsp"%>


<div class="form-container">

	    <form action="update_profile" method="post">
	        <h3>Update Profile</h3>
	        <c:if test="${ not empty failedMsg }">
				<p class="text-center text-danger">${failedMsg }</p>
			<c:remove var="failedMsg" scope="session" />
			</c:if>
	
			<c:if test="${ not empty succMsg }">
				<p class="text-center text-success">${succMsg }</p>
				<c:remove var="succMsg" scope="session" />
			</c:if>
	        <input type="hidden" value="${userobj.id }" name="id">
	        <span>Full Name</span>
	        <input type="text" name="fname" class="box" placeholder="enter your name"  require value="${userobj.name}">
	        <span>Email</span>
	        <input type="email" name="email" class="box" placeholder="enter your email"  require value="${userobj.email }">
	        <span>PhoneNumber</span>
	        <input type="phone" name="phno" class="box" placeholder="enter your phone"  require value="${userobj.phno }">
	        <span>password</span>
	        <input type="password" name="password" class="box" placeholder="enter your password" id="exampleInputPassword1" require>
	        <input type="submit" value="Update" class="btn">
	    </form>

</div>

<%@include file="all_component/footer.jsp"%>
</body>
</html>