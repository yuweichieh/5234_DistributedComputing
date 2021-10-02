<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" />
</head>
<body>
	<section class="header" style="background-image: linear-gradient(rgba(20,20,50,0.5), rgba(20,0,90,0.65)), url(images/homeBack.png);">
		<jsp:include page="Navbar.jsp" />
		<div class="text-box">
			<h1>World's Biggest Shoes Selling Company</h1>
			<p>You will discover all shoes that you've been looking for if you got a bunch of money in your pocket.</p>
			<a href="/MyShoes/purchase" class="hero-btn">Buy Now</a>
		</div>
	</section>
	<!-- Javascript for Toggle Menu -->
	<script>
		var navLinks = document.getElementById("navLinks");
		function showMenu() {
			navLinks.style.right = "0";
		}
		function hideMenu() {
			navLinks.style.right = "-200px";
		}
	</script>
	
</body>
</html>