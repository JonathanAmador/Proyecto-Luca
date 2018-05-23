<%@ page import="java.util.*"%>
<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>-->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Proyecto LucaTic grupo A</title>

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Hind:400,700"
	rel="stylesheet">

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
	

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.html">Inicio</a></li>
				<li class="active">Resultado de tu busqueda</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
	
			<!-- row -->
			<div class="row">
				

				<!-- Product Single -->
				<c:forEach var="film" items="${listFilm}">
					<form method="POST" action="FilmSelect.do">
						<div class="col-md-4 col-sm-6 col-xs-6">
							<div class="product product-single">
								<div class="product-thumb">
									<div class="product-label">
										<span>New</span> <span class="sale">-20%</span>
									</div>
									<button class="main-btn quick-view" name="id"
										value="${film.idFilm}">
										<i class="fa fa-search-plus"></i> Quick view
									</button>
									<image src="Image/${film.image}">
								</div>
								<div class="product-body">
									<h3 class="product-price">${film.price}<del
											class="product-old-price">$45.00</del>
									</h3>
									<div class="product-rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star-o empty"></i>
									</div>
									<h2 class="product-name">
										<a href="#">${film.title}</a>
									</h2>
									<div class="product-btns">
										<button class="main-btn icon-btn">
											<i class="fa fa-heart"></i>
										</button>
										<button class="main-btn icon-btn">
											<i class="fa fa-exchange"></i>
										</button>
										<button class="primary-btn add-to-cart">
											<i class="fa fa-shopping-cart"></i> Add to Cart
										</button>
									</div>
									</button>
								</div>
							</div>
						</div>
					</form>
				</c:forEach>
				<!-- /Product Single -->

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- FOOTER -->
	<footer id="footer" class="section section-grey">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- footer widget -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<!-- footer logo -->
						<div class="footer-logo">
							<a class="logo" href="index.html">
		            <h1>Movie<span style="color: orangered">Hunter</span></h1>
		          </a>
						</div>
						<!-- /footer logo -->

						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna</p>

						<!-- footer social -->
						<ul class="footer-social">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
						</ul>
						<!-- /footer social -->
					</div>
				</div>
				<!-- /footer widget -->

				<!-- footer widget -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<h3 class="footer-header">My Account</h3>
						<ul class="list-links">
							<li><a href="#">Mi cuenta</a></li>
							<li><a href="#">Carrito</a></li>
							<li><a href="#">Inicio</a></li>
						</ul>
					</div>
				</div>
				<!-- /footer widget -->

				<div class="clearfix visible-sm visible-xs"></div>

				<!-- footer widget -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<h3 class="footer-header">Atenci&oacute;n al cliente</h3>
						<ul class="list-links">
							<li><a href="#">Sobre nosotros</a></li>
							<li><a href="#">Envio</a></li>
							<li><a href="#">Contactanos</a></li>
							<li><a href="#">Ayuda</a></li>
						</ul>
					</div>
				</div>
				<!-- /footer widget -->

				<!-- footer subscribe -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<h3 class="footer-header">Suscribete</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
						<form>
							<div class="form-group">
								<input class="input" placeholder="Enter Email Address">
							</div>
							<button class="primary-btn">Newsletter</button>
						</form>
					</div>
				</div>
				<!-- /footer subscribe -->
			</div>
			<!-- /row -->
			<hr>
			<!-- row -->
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<!-- footer copyright -->
					<div class="footer-copyright">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<p>Proyecto LucaTica Grupo 6</p>
						
					</div>
					<!-- /footer copyright -->
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</footer>
	<!-- /FOOTER -->

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>