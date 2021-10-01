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
	<form:form modelAttribute="confirmation" method="post" action="submitConfirmation">
	    <div>
			<a>Thanks for your purchase!</a>
			<a>Your confirmation number is ######.</a>
		</div>
		<div>
			<input type="submit" value="Back to Homepage">
		</div>
	</form:form>
	
</body>
</html>