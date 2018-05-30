<%@ page import="java.util.*"%>

<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>-->
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1" contentType="text/html; charset=UTF-8">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Proyecto LucaTic grupo A</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">

	<!-- Bootstrap -->
 	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Slick -->
 	<link type="text/css" rel="stylesheet" href="css/slick.css" />
	<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

	<!-- nouislider -->
 	<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

	<!-- Font Awesome Icon -->
 	<link rel="stylesheet" href="css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
 	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>
	<!-- HEADER -->
	<header>
		<%@include file="header-footer/header.jsp" %>
	</header>
	<!-- /HEADER -->

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="#">Inicio</a></li>
				<li><a href="#">G&eacute;neros</a></li>
				<li><a href="#">Pel &iacute;culas</a></li>
				<li class="active">Nombre de pl &iacute;cula</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

<!--  

<var="film" items="${film}">
	<h1>${film.title}</h1>
	<h3>${film.director}</h3>
	<h3>${film.genre.description}</h3>
	<h3>${film.year}</h3>
	<h3>${film.duration}</h3>
	<image src = "${film.image}" >
	<p>${film.synopsis}</p>
	<h4>${film.price}</h4> -->
	<!-- <p><input type = "submit" value="Añadir carrito"/></p>-->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!--  Product Details -->
				<div class="product product-details clearfix">
					<div class="col-md-6">
						<div id="product-main-view">
							<div class="product-view">
								<image src = "Image/${film.image}" >
                              
							</div>
						</div>
						
							
					</div>
					<div class="col-md-6">
						<div class="product-body">
							
							<h2 class="product-name">${film.title}</h2>
							<h3 class="product-price">${film.price} &euro;</h3>
							<div>	
							</div>
							<p><strong>Director:</strong> ${film.director}</p>
							<p><strong>A&ntilde;o:</strong> ${film.year}</p>
							<p><strong>Duraci&oacute;n:</strong>${film.duration}</p>
							<p><strong>G&eacute;nero:</strong>${film.genre.description}</p>
							<p>${film.synopsis}</p>

							<div class="product-btns">
								<div class="qty-input">
									<span class="text-uppercase">Cantidad: </span>
									<input class="input" type="number">
								</div>
								<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> A&ntilde;adir a carrito</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="product-tab">
							
							<div class="tab-content">
								
								
							</div>
						</div>
					</div>

				</div>
				<!-- /Product Details -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	

<!-- FOOTER -->
	<footer>
		<%@include file="header-footer/Footer.jsp"%>
	</footer>
	<!-- /FOOTER --


	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>