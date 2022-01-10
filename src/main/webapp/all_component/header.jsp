<%@page import="com.entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<header class="header">

    <div class="header-1">

        <a href="index.jsp" class="logo"> <i class="fas fa-book"></i> bookly </a>

        <form action="search.jsp" method="post" class="search-form">
            <input type="search" name="ch" placeholder="search here..." id="search-box">
            <label for="search-box" class="fas fa-search"></label>
        </form>

        <div class="icons">
        
        
			<c:if test="${not empty userobj }">
			
	            <a href="checkout.jsp" class="fas fa-shopping-cart" title="Cart"></a>
	            <a href="profile.jsp" id="" class="fas fa-user"> ${userobj.name}</a>
	            <a href="logout" id="" class="fas fa-sign-in-alt"> Logout</a>
				<a href="setting.jsp" id="" class="fas fa-cog" title="Setting"></a>

			</c:if>

			<c:if test="${empty userobj }">
			
	            <a href="login.jsp" id="" class="fas fa-user">Login</a>
	            <a href="register.jsp" id="" class="fas fa-user-plus">Register</a>
					
			</c:if>
        </div>

    </div>

    <div class="header-2">
        <nav class="navbar-book">
            <a href="index.jsp">home</a>
            <a href="index.jsp#featured">New Books</a>
            <a href="index.jsp#arrivals">User Book</a>
            <a href="#reviews">reviews</a>
            <a href="#blogs">blogs</a>
        </nav>
    </div>

</header>

