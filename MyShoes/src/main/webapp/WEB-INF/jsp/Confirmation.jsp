<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Thank you</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
	<section class="header" style="background-image: linear-gradient(rgba(20,20,50,0.5), rgba(20,15,80,0.65)), url(../images/homeBack.png);">
		<jsp:include page="Navbar.jsp" />
		<form:form modelAttribute="confirmation" method="post" action="submitConfirmation">
		<div class="text-box">
			<h1>Your confirmation number is ######.</h1>
			<p style="font-size: 20px;">Thanks for your purchase!</p>
			<input class="hero-btn" type="submit" value="Back to Homepage">
		</div>
		</form:form>
	</section>
	<jsp:include page="Footer.jsp" />
</body>
</html>