<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Info</title>
</head>
<body>
	<form:form modelAttribute="payment" method="post" action="submitPayment">
	    <table style="width:100%; border:1px solid black">
	    	<tr><th>Credit Card Information</th></tr>
	    	<tr><td>Name: </td><td><form:input path="cardHolderName" /></td></tr>
	    	<tr><td>CC Number: </td><td><form:input path="creditCardNumber" /></td></tr>
	    	<tr><td>Expiration: </td><td><form:input path="expirationDate" /></td></tr>
	    	<tr><td>CVV Code: </td><td><form:input path="cvvCode" /></td></tr>
	    	<tr><td>Total Amount to Pay: <c:out value = "${order.getTotal_price()}"/></td></tr>
	    	<tr>
				<td colspan="2"><input type="submit" value="Payment"></td>
		  	</tr>
	    </table>
	</form:form>
</body>
</html>