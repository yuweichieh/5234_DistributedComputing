<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" name="viewport" content="with=device-width, initial-scale=1.0">
	<title>Home Page</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
	<jsp:include page="Header.jsp" />
	<section class="location">
		<h1 style="font-size: 25px;">Location</h1>
		<p>Our company locations all around the world.</p>
		<div class="_row">
			<div class="loc-col">
				<!-- image credit to California Courts - CA.gov San Diego County, Central Courthouse  -->
				<img src="images/cali-resized.png">
				<div class="layer">
					<h3>San Diego, CA</h3>
				</div>
			</div>
			<div class="loc-col">
				<img src="images/columbus-resized.png">
				<div class="layer">
					<h3>Columbus, OH</h3>
				</div>
			</div>
			<div class="loc-col">
				<img src="images/london-resized.png">
				<div class="layer">
					<h3>London, UK</h3>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="Footer.jsp" />
</body>
</html>