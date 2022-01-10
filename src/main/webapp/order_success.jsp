<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<style>

.order-suc{
	font-size: 2rem;
}
</style>
<body style="background-color: #f0f1f2">
	<%@include file="all_component/header.jsp"%>
	<div class="order-suc container text-center mt-3">
		<i class="fas fa-check-circle fa-5x text-success my-3"></i>
		<h1 class= "my-3">Thank You</h1>
		<h2 class= "my-3">Your Order SuccessFully</h2>
		<h5 class= "my-3">With in 7 days your product will be delivered in your address</h5>
		<a href="index.jsp" class="btn btn-primary mt-3">Home</a> <a
			href="order.jsp" class="btn btn-danger mt-3">View Order</a>
	</div>
	
	<%@include file="all_component/footer.jsp"%>
</body>
</html>