	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>OrderEntryForm</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
	<section class="header" style="background-image: linear-gradient(rgba(20,20,50,0.5), rgba(20,15,80,0.65)), url(images/homeBack.png);">
		<jsp:include page="Navbar.jsp" />
		<form:form modelAttribute="order" method="post" action="purchase/submitItems">
			<div class="container">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Name</th>
							<th>Price</th>
							<th>Quantity</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${order.items}" var="item" varStatus="loop">
							<tr>
								<td><form:input id="fixInput" path="items[${loop.index}].name" readonly="true"/></td>	
								<td><form:input id="fixInput" path="items[${loop.index}].price" readonly="true"/></td>	
								<td><form:input path="items[${loop.index}].quantity" /></td>	
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div>
					<input class="btn btn-info" id="order-btn" type="submit" value="Purchase">
				</div>
			</div>
		</form:form>
	</section>
	<jsp:include page="Footer.jsp" />
</body>
</html>