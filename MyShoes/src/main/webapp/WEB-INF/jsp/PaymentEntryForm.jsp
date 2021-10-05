<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Payment Info</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
	<section class="header" style="background-image: linear-gradient(rgba(20,20,50,0.5), rgba(20,15,80,0.65)), url(../images/homeBack.png);">
		<jsp:include page="Navbar.jsp" />
		<form:form modelAttribute="payment" method="post" action="submitPayment">
			<div class="container">
				<table class="table table-striped">
					<thead>
			    		<tr><td colspan="2">Credit Card Information</td></tr>
			    	</thead>
			    	<tbody>
				    	<tr><td>Name: </td><td><form:input path="cardHolderName" /></td></tr>
				    	<tr><td>CC Number: </td><td><form:input path="creditCardNumber" /></td></tr>
				    	<tr><td>Expiration: </td><td><form:input path="expirationDate" /></td></tr>
				    	<tr><td>CVV Code: </td><td><form:input path="cvvCode" /></td></tr>
				    	<tr><td>Total Amount to Pay: </td><td style="color: red;"><c:out value ="${order.getTotal_price()}"/></td></tr>
			    	</tbody>
	    		</table>
	    	</div>
			<div>
				<input class="btn btn-info" id="order-btn" type="submit" value="Confirm">
			</div>
		</form:form>
	</section>
	<jsp:include page="Footer.jsp" />
</body>
</html>