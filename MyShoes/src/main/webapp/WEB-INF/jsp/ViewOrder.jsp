<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Order Confirmation</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
	<section class="header" style="background-image: linear-gradient(rgba(20,20,50,0.5), rgba(20,15,80,0.65)), url(../images/homeBack.png);">
		<jsp:include page="Navbar.jsp" />
		<div class="container">
			<table class="table table-striped">
				<thead>
					<tr><th colspan="3"><c:out value="${shipping.getName()}"/>'s Order Detail:</th></tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${order.getItems()}">
					    <tr><td><c:out value="Name: ${item.getName()}"/></td><td> 
					    <c:out value="Price: ${item.getPrice()}"/></td><td>  
					    <c:out value="Quantity: ${item.getQuantity()}"/></td></tr> 
					</c:forEach>
					<c:set var = "payment" scope = "session" value = "${payment}"/>
					<c:set var = "shipping" scope = "session" value = "${shipping}"/>
					<tr><td>Credit Card Holder's Name:</td><td colspan="2"><c:out value = "${payment.getCardHolderName()}"/></td></tr>
					<tr><td>Credit Card Number:</td><td colspan="2"><c:out value = "${payment.getCreditCardNumber()}"/></td></tr>
					<tr><td>Expiration Date:</td><td colspan="2"><c:out value = "${payment.getExpirationDate()}"/></td></tr>
					<tr><td>CVV Code:</td><td colspan="2"><c:out value = "${payment.getCvvCode()}"/></tr>				
					<tr><td>Your Address:</td>
						<td colspan="2"><c:out value="${shipping.getAddressLine1()}"/>,<c:out value="${shipping.getAddressLine2()}"/>
						<c:out value="${shipping.getCity()}"/>, <c:out value="${shipping.getState()}"/>, <c:out value="${shipping.getZip()}"/></td>
					</tr>
				</tbody>
			</table>
			<div id="order-btn">
				<form:form modelAttribute="order" method="post" action="confirmOrder">
					<input class="btn btn-info" id="confirm-btn" type="submit" value="Confirm">
				</form:form>
			</div>
		</div>
	</section>
	<jsp:include page="Footer.jsp" />
</body>
</html>