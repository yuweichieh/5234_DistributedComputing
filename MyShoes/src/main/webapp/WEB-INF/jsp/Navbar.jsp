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
	<nav>
		<h1><a href="/MyShoes/index" style="text-decoration:none; font-size: 30px;">Company Logo Here</a></h1>
		<div class="nav-links" id="navLinks">
			<i class="fa fa-times" onclick="hideMenu()"></i>
			<ul>
				<li><a href="/MyShoes/index">Home</a></li>
				<li><a href="/MyShoes/purchase">View Items</a></li>
				<li><a href="/MyShoes/index/about">About</a></li>
				<li><a href="/MyShoes/index/contact">Contact</a></li>
			</ul>
		</div>
		<i class="fa fa-bars" onclick="showMenu()"></i>
	</nav>
</body>
</html>