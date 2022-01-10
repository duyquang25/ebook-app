<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Book</title>
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #f7f7f7;
}
/* toast */
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

/* toast */
</style>
</head>
<body>
	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<c:if test="${not empty addCart }">
		<div id="toast">${addCart}</div>

		<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

		<c:remove var="addCart" scope="session" />

	</c:if>
	<%@include file="all_component/header.jsp"%>
	<%@include file="all_component/navbar.jsp"%>
	<%@include file="all_component/home.jsp"%>
	<%@include file="all_component/icon.jsp"%>
	
	
<section class="featured" id="featured">
    <h1 class="heading"> <span>Books for search</span> </h1>

    <div class="swiper featured-slider">

        <div class="swiper-wrapper">
			<%
			String ch=request.getParameter("ch");
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getBookBySearch(ch);
			for (BookDtls b : list2) {
			%>
			<div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-heart"></a>
                    <a href="view_books.jsp?bid=<%=b.getBookId()%>" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="book/<%=b.getPhotoName()%>" alt="">
                </div>
                <div class="content">
                    <h3><%=b.getBookName()%></h3>
                    <h4><%=b.getAuthor()%></h4>
                    <div class="price"><%=b.getPrice()%><span>$</span></div>
                    
                    
                    <%
					if (u == null) {
					%>
					<a href="login.jsp" class="btn">Add Cart</a>
					<%
					} else {
					%>
					<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
						class="btn">Add Cart</a>
					<%
					}
					%>
                   
                </div>
            </div>
			
			<%
			}
			%>


        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>
	<%@include file="all_component/footer.jsp"%>
	<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
	<script type="text/javascript">
	var swiper = new Swiper(".featured-slider", {
		  spaceBetween: 10,
		  loop:true,
		  centeredSlides: true,
		  autoplay: {
		    delay: 9500,
		    disableOnInteraction: false,
		  },
		  navigation: {
		    nextEl: ".swiper-button-next",
		    prevEl: ".swiper-button-prev",
		  },
		  breakpoints: {
		    0: {
		      slidesPerView: 1,
		    },
		    450: {
		      slidesPerView: 2,
		    },
		    768: {
		      slidesPerView: 3,
		    },
		    1024: {
		      slidesPerView: 4,
		    },
		  },
		});

		var swiper = new Swiper(".arrivals-slider", {
		  spaceBetween: 10,
		  loop:true,
		  centeredSlides: true,
		  autoplay: {
		    delay: 9500,
		    disableOnInteraction: false,
		  },
		  breakpoints: {
		    0: {
		      slidesPerView: 1,
		    },
		    768: {
		      slidesPerView: 2,
		    },
		    1024: {
		      slidesPerView: 3,
		    },
		  },
		});
	var swiper = new Swiper(".books-slider", {
		  loop:true,
		  centeredSlides: true,
		  autoplay: {
		    delay: 9500,
		    disableOnInteraction: false,
		  },
		  breakpoints: {
		    0: {
		      slidesPerView: 1,
		    },
		    768: {
		      slidesPerView: 2,
		    },
		    1024: {
		      slidesPerView: 3,
		    },
		  },
		});
	</script>
	<script type="text/javascript">

	var swiper = new Swiper(".reviews-slider", {
	  spaceBetween: 10,
	  grabCursor:true,
	  loop:true,
	  centeredSlides: true,
	  autoplay: {
	    delay: 9500,
	    disableOnInteraction: false,
	  },
	  breakpoints: {
	    0: {
	      slidesPerView: 1,
	    },
	    768: {
	      slidesPerView: 2,
	    },
	    1024: {
	      slidesPerView: 3,
	    },
	  },
	});

	var swiper = new Swiper(".blogs-slider", {
	  spaceBetween: 10,
	  grabCursor:true,
	  loop:true,
	  centeredSlides: true,
	  autoplay: {
	    delay: 9500,
	    disableOnInteraction: false,
	  },
	  breakpoints: {
	    0: {
	      slidesPerView: 1,
	    },
	    768: {
	      slidesPerView: 2,
	    },
	    1024: {
	      slidesPerView: 3,
	    },
	  },
	});
	</script>
</body>
</html>