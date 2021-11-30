<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Shipping Info</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
	<section class="header" style="background-image: linear-gradient(rgba(20,20,50,0.5), rgba(20,15,80,0.65)), url(../images/homeBack.png);">
		<jsp:include page="Navbar.jsp" />
		<form:form modelAttribute="shipping" method="post" action="submitShipping">
			<div class="container">
				<table class="table table-striped">
					<thead>
			    		<tr><td colspan="2">Shipping Address</td></tr>
			    	</thead>
			    	<tbody>
				    	<tr><td>Name: </td><td><form:input path="name" /></td></tr>
				    	<tr><td>AddressLine1: </td><td><form:input path="addressLine1" /></td></tr>
				    	<tr><td>AddressLine2: </td><td><form:input path="addressLine2" /></td></tr>
				    	<tr><td>City: </td><td><form:input path="city" /></td></tr>
				    	<tr><td>State: </td><td><form:input path="state" /></td></tr>
				    	<tr><td>Zip: </td><td><form:input path="zip" /></td></tr>
			    	</tbody>
	    		</table>
	    			<div>
						<input class="btn btn-info" id="order-btn" type="submit" value="Confirm">
					</div>
	    	</div>
		</form:form>
	</section>
	<jsp:include page="Footer.jsp" />
</body>
</html>