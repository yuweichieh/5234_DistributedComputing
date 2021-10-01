<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Shipping Info</title>
	<style><%@include file="../../css/style.css"%></style>
</head>
<body>
	<form:form modelAttribute="shipping" method="post" action="submitShipping">
	    <table style="width:100%; border:1px solid black">
	    	<tr><th>Shipping Address</th></tr>
	    	<tr><td>Name: </td><td><form:input path="name" /></td></tr>
	    	<tr><td>AddressLine1: </td><td><form:input path="addressLine1" /></td></tr>
	    	<tr><td>AddressLine2: </td><td><form:input path="addressLine2" /></td></tr>
	    	<tr><td>City: </td><td><form:input path="city" /></td></tr>
	    	<tr><td>State: </td><td><form:input path="state" /></td></tr>
	    	<tr><td>Zip: </td><td><form:input path="zip" /></td></tr>
	    	<tr>
				<td colspan="2"><input type="submit" value="Payment"></td>
		  	</tr>
	    </table>
	</form:form>
</body>
</html>