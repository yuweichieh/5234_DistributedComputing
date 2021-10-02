<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
	<title>About Us</title>
</head>
<body>
	<section class="header" style="background-image: linear-gradient(rgba(20,20,50,0.5), rgba(20,0,90,0.65)), url(../images/homeBack.png);">
		<jsp:include page="Navbar.jsp" />
		<div class="container">
			<div class="row">
				<div class="loc-col">
					<!-- image credit to California Courts - CA.gov San Diego County, Central Courthouse  -->
					<img src="../images/tmpPic1.image">
					<div class="layer">
						<h3>
							Wei-Chieh Yu<br><br>
							<p style="font-size: 18px">
								Company Founder<br>
								Drinks coffee everyday.
							</p>
						</h3>
					</div>
				</div>
				<div class="loc-col">
					<img src="../images/tmpPic2.jpg">
					<div class="layer">
						<h3>
						</h3>
					</div>
				</div>
				<div class="loc-col">
					<img src="../images/tmpPic3.jpeg">
					<div class="layer">
						<h3>
						</h3>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>