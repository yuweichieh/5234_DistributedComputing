<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Confirmation</title>
</head>
<body>
	<table style="width:100%; border: 1px solid black">
		<tr><td><c:out value="${shipping.getName()}"/>'s Order Detail:</td></tr>
		<tr></tr>
		<c:forEach var="item" items="${order.getItems()}">
		    <tr><td><c:out value="Name: ${item.getName()}"/>, 
		    <c:out value="Price: ${item.getPrice()}"/>, 
		    <c:out value="Quantity: ${item.getQuantity()}"/></td></tr> 
		</c:forEach>
		<c:set var = "payment" scope = "session" value = "${payment}"/>
		<c:set var = "shipping" scope = "session" value = "${shipping}"/>
		<tr><td>Credit Card Holder's Name: <c:out value = "${payment.getCardHolderName()}"/></td></tr>
		<tr><td>Credit Card Number: <c:out value = "${payment.getCreditCardNumber()}"/></td></tr>
		<tr><td>Expiration Date: <c:out value = "${payment.getExpirationDate()}"/></td></tr>
		<tr><td>CVV Code: <c:out value = "${payment.getCvvCode()}"/></tr>
		<tr><td>
			<div>
				Your Address: <c:out value="${shipping.getAddressLine1()}"/>,<c:out value="${shipping.getAddressLine2()}"/>
				<c:out value="${shipping.getCity()}"/>, <c:out value="${shipping.getState()}"/>, <c:out value="${shipping.getZip()}"/>
			</div>
		</td></tr>
	</table>
	<form:form modelAttribute="order" method="post" action="confirmOrder">
		<input type="submit" value="Confirm">
	</form:form>
</body>
</html>