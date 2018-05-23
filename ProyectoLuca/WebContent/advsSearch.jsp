<%@ page import="java.util.*"%>
<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>-->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
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
		<!-- top Header -->
		<div id="top-header">
			<div class="container">
				<div class="pull-left">
					<span>Proyecto LucaTic grupo A</span>
				</div>

			</div>
		</div>
		<!-- /top Header -->

		<!-- header -->
		<div id="header">
			<div class="container">
				<div class="pull-left">
					<!-- Logo -->
					<div class="header-logo">
						<a class="logo" href="index.html">
							<h1>Movie<span style="color: orangered">Hunter</span></h1>
						</a>
					</div>
					<!-- /Logo -->


					<!-- Search -->
					<div class="header-search">
						<form method="POST" action="FilmListSelect.do">
							<input type="text" placeholder="Busca tu pelicula..."
								name="title" size="50"> <input class="search-btn"
								id="buscar" type="submit" value="Buscar" />
						</form>
						<a href="advsSearch.jsp" class="advsearch">Busqueda avazada</a>

					</div>
					<!-- /Search -->
				</div>
				<div class="pull-right">
					<ul class="header-btns">
						<!-- Account -->
						<li class="header-account dropdown default-dropdown">
							<div class="dropdown-toggle" role="button" data-toggle="dropdown"
								aria-expanded="true">
								<div class="header-btns-icon">
									<i class="fa fa-user-o"></i>
								</div>
								<strong class="text-uppercase">Mi cuenta <i
									class="fa fa-caret-down"></i></strong>
							</div> <a href="#" class="text-uppercase">Inicio</a> / <a href="#"
							class="text-uppercase">unete</a>
						</li>
						<!-- /Account -->

						<!-- Cart -->
						<li class="header-cart dropdown default-dropdown"><a
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="true">
								<div class="header-btns-icon">
									<i class="fa fa-shopping-cart"></i> <span class="qty">3</span>
								</div> <strong class="text-uppercase">Mi carrito:</strong> <br> <span>35.20&euro;</span>
						</a>
							<div class="custom-menu">
								<div id="shopping-cart">
									<div class="shopping-cart-list">
										<div class="product product-widget">
											<div class="product-thumb">
												<img src="#" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-price">
													32.50&euro; <span class="qty">x3</span>
												</h3>
												<h2 class="product-name">
													<a href="#">Product Name Goes Here</a>
												</h2>
											</div>
											<button class="cancel-btn">
												<i class="fa fa-trash"></i>
											</button>
										</div>
										<div class="product product-widget">
											<div class="product-thumb">
												<img src="#" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-price">
													32.50&euro; <span class="qty">x3</span>
												</h3>
												<h2 class="product-name">
													<a href="#">Product Name Goes Here</a>
												</h2>
											</div>
											<button class="cancel-btn">
												<i class="fa fa-trash"></i>
											</button>
										</div>
									</div>
									<div class="shopping-cart-btns">
										<button class="main-btn">View Cart</button>
										<button class="primary-btn">
											Checkout <i class="fa fa-arrow-circle-right"></i>
										</button>
									</div>
								</div>
							</div></li>
						<!-- /Cart -->

						<!-- Mobile nav toggle-->
						<li class="nav-toggle">
							<button class="nav-toggle-btn main-btn icon-btn">
								<i class="fa fa-bars"></i>
							</button>
						</li>
						<!-- / Mobile nav toggle -->
					</ul>
				</div>
			</div>
			<!-- header -->
		</div>
		<!-- container -->
	</header>
	<!-- /HEADER -->
	<!-- NAVIGATION -->
	<div id="navigation">
		<!-- container -->
		<div class="container">
			<div id="responsive-nav">
				<!-- category nav -->
				<div class="category-nav show-on-click">
					<span class="category-header">Genero <i class="fa fa-list"></i></span>
					<ul class="category-list">
					
						<li>
						<button class="main-btn quick-view" name="id" value="${film.idFilm}" style="border: 0px">
						<a href="#">Acci&oacute;n </a>
						</button></li>
						<li>
						<button class="main-btn quick-view" name="id" value="${film.idFilm}" >
						<a href="#">Animaci&oacute;n</a>
						</button></li>
						<li >
						<button class="main-btn quick-view" name="id" value="${film.idFilm}">
						<a href="#">Ciencia ficci&oacute;n </a>
						</button></li>
						<li><button class="main-btn quick-view" name="id" value="${film.idFilm}">
						<a href="#">Comedia</a>
						</button></li>
						<li>
						<button class="main-btn quick-view" name="id" value="${film.idFilm}">
						<a href="#">Drama</a>
						</button></li>
						<li>
						<button class="main-btn quick-view" name="id" value="${film.idFilm}">
						<a href="#">Documentales </a>
						</button></li>
						<li>
						<button class="main-btn quick-view" name="id" value="${film.idFilm}">
						<a href="#">Terror</a>
						</button></li>
						<li>
						<button class="main-btn quick-view" name="id" value="${film.idFilm}">
						<a href="#">Thriller</a>
						</button></li>
					</ul>
				</div>
				<!-- /category nav -->

				<!-- menu nav -->
				<div class="menu-nav">
					<span class="menu-header">Menu <i class="fa fa-bars"></i></span>
					<ul class="menu-list">
						<li><a href="index.html">Inico</a></li>
						<li><a href="#">Sobre nosotros</a></li>
						<li><a href="">Envio</a></li>
						<li><a href="">Contactanos
						</a></li>
					</ul>
				</div>
				<!-- menu nav -->
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /NAVIGATION -->

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
			<div id="main-adv-search-wrapper">
                  <div class="fa-shadow" id="adv-search-container">
                     <div id="adv-search-main-title"><b>BUSCADOR AVANZADO</b><span> (Buscar en los campos que selecciones)</span></div>
                     <div id="adv-search-filter-container">
                        <form method="POST" action="FilmListSelect.do">
                           <div id="text-option-container" class="form-section">
                              <!--<div class="title-filter">
                                 Texto:                    
                              </div>-->
                              <div>
                                <p><label for="">Titulo </label></p>
                                 <input name="title" type="text" placeholder="Busca tu pelicula ..." name="search" size="50">
                                 <p><label for="">Director </label></p>
                                 <input name="director" type="text" placeholder="Busca tu pelicula ..." name="search" size="50">

								</div>
								<!--  <div>
                                 <input type="checkbox" name="stype[]" value="title" checked="">TÃ­tulo
                                 <input type="checkbox" name="stype[]" value="director">Director
                                 <span class="adv-search-option">
                                  </span>
                              </div>-->
							</div>
							<div id="genre-country-container" class="form-section">
								<div id="genre-container">
									<div class="title-filter">G&eacutenero:</div>
									<div>
										<select name="genre">
											<option value="">-Todos los g&eacuteneros-</option>
											<option value="ACTION">Acci&oacuten</option>
											<option value="ANIMATION">Animaci&oacuten</option>
											<option value="AVENTURE">Aventura</option>
											<option value="SCIENCE">Ciencia ficci&oacuten</option>
											<option value="COMEDY">Comedia</option>
											<option value="DRAMA">Drama</option>
											<option value="DOCUMENTARY">Document&aacutel</option>
											<option value="TERROR">Terror</option>
											<option value="THRILLER">Thriller</option>
										</select>
									</div>
								</div>
							</div>
							<div id="year-container" class="form-section">
								<div>
									<div class="title-filter">A&ntildeo:</div>
									<div id="from-year-container">
										<select name="year">
											<option value="">- - - -</option>
											<option>2020</option>
											<option>2019</option>
											<option>2018</option>
											<option>2017</option>
											<option>2016</option>
											<option>2015</option>
											<option>2014</option>
											<option>2013</option>
											<option>2012</option>
											<option>2011</option>
											<option>2010</option>
											<option>2009</option>
											<option>2008</option>
											<option>2007</option>
											<option>2006</option>
											<option>2005</option>
											<option>2004</option>
											<option>2003</option>
											<option>2002</option>
											<option>2001</option>
											<option>2000</option>
										</select>
									</div>
								</div>
							</div>
							<div id="adv-search-button-container">
								<input id="adv-search-button" type="submit" id="button-search"
									value="Buscar">
							</div>
						</form>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
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