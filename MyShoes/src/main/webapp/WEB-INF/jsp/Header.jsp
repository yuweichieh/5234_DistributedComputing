<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />

</head>
<body>
	<section class="header">
		<nav>
			<h1><a href="/MyShoes/index" style="text-decoration:none;">Company Name</a></h1>
			<div class="nav-links">
				<ul>
					<li><a href="/MyShoes/index">Home</a></li>
					<li><a href="/MyShoes/purchase">View Items</a></li>
					<li><a href="/MyShoes/about">About</a></li>
					<li><a href="/MyShoes/contact">Contact</a></li>
				</ul>
			</div>
		</nav>
		<div class="text-box">
			<h1>World's Biggest Shoes Selling Company</h1>
			<p>You will discover all shoes that you've been looking for if you got a bunch of money in your pocket.</p>
			<a href="/MyShoes/purchase" class="hero-btn">Buy Now</a>
		</div>
	</section>
</body>
</html>