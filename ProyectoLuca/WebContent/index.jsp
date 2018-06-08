<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
						<a class="logo" href="index.jsp">
							<h1>Movie<span style="color: orangered">Hunter</span></h1>
						</a>
					</div>
					<!-- /Logo -->


					<!-- Search -->
					<div class="header-search">
						<form method="POST" action="FilmListSelect.do">
							<input type="text" placeholder="Busca tu pelicula..." name="title" size="50">
							<input class="search-btn" id="buscar" type="submit" value="Buscar" />
						</form>
						 <a  href="advsSearch.jsp" class="advsearch">Busqueda avazada</a>
						
					</div>
					<!-- /Search -->
				</div>
				<div class="pull-right">
					<ul class="header-btns">
						<!-- Account -->
						<li class="header-account dropdown default-dropdown">
							<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
								<div class="header-btns-icon">
									<i class="fa fa-user-o"></i>
								</div>
								<c:if test="session.getAttribute('Nombre') !=null">
								<strong class="text-uppercase"><i class="fa fa-caret-down">Mi cuenta: ${session.getAttribute("Nombre")}</i></strong>
								</c:if>
								<%
									if (session.getAttribute("Nombre") != null) {
										System.out.println("Nombre del usuario: "+session.getAttribute("Nombre"));	
									}
								%>
								<strong class="text-uppercase"><i class="fa fa-caret-down"></i></strong>	
							</div>
							<a href="SesionRegistrate.jsp" class="text-uppercase">Inicio</a> / <a href="#" class="text-uppercase">unete</a>
						</li>
						<!-- /Account -->

						<!-- Cart -->
						<li class="header-cart dropdown default-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
								<div class="header-btns-icon">
									<i class="fa fa-shopping-cart"></i>
									<span class="qty">3</span>
								</div>
								<strong class="text-uppercase">Mi carrito:</strong>
								<br />
								<span>35.20&euro;</span>
							</a>
							<div class="custom-menu">
								<div id="shopping-cart">
									<div class="shopping-cart-list">
										<div class="product product-widget">
											<div class="product-thumb">
												
											</div>
											<div class="product-body">
												<h3 class="product-price">32.50&euro; <span class="qty">x3</span></h3>
												<h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
											</div>
											<button class="cancel-btn"><i class="fa fa-trash"></i></button>
										</div>
										<div class="product product-widget">
											<div class="product-thumb">
												
											</div>
											<div class="product-body">
												<h3 class="product-price">32.50&euro; <span class="qty">x3</span></h3>
												<h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
											</div>
											<button class="cancel-btn"><i class="fa fa-trash"></i></button>
										</div>
									</div>
									<div class="shopping-cart-btns">
										<button class="main-btn">View Cart</button>
										<button class="primary-btn">Checkout <i class="fa fa-arrow-circle-right"></i></button>
									</div>
								</div>
							</div>
						</li>
						<!-- /Cart -->

						<!-- Mobile nav toggle-->
						<li class="nav-toggle">
							<button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
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
				<div class="category-nav">
					<span class="category-header">Generos <i class="fa fa-list"></i></span>
					<form method="POST" action="FilmListSelect.do">
					<ul class="category-list">
						
						
						<li>
						<button class="main-btn quick-view" name="genre" value="ACTION" style="border: 0px">
						<p>Acci&oacute;n </p>
						</button>

						</li>
						<li>

						<button class="main-btn quick-view" name="genre" value="ANIMATION" >
						<p>Animaci&oacute;n</p>
						</button>

						</li>
						<li >

						<button class="main-btn quick-view" name="genre" value="SCIENCE">
						<p>Ciencia ficci&oacute;n </p>
						</button>

						</li>
						<li>

						<button class="main-btn quick-view" name="genre" value="COMEDY">
						<p>Comedia</p>
						</button>

						</li>
						<li>

						<button class="main-btn quick-view" name="genre" value="DRAMA">
						<p>Drama</p>
						</button>

						</li>
						<li>
						<button class="main-btn quick-view" name="genre" value="DOCUMENTARY">
						<p>Documentales </p>
						</button>

						</li>
						<li>
						<button class="main-btn quick-view" name="genre" value="TERROR">
						<p>Terror</p>
						</button>
						</li>
						<li>
						<button class="main-btn quick-view" name="genre" value="THRILLER">
						<p>Thriller</p>
						</button>	
						</li>	
					</ul>
					</form>
				</div>
				<!-- /category nav -->

				<!-- menu nav -->
				<div class="menu-nav">
					<span class="menu-header">Menu <i class="fa fa-bars"></i></span>
					<ul class="menu-list">
						<li><a href="index.jsp">Inicio</a></li>
						<li><a href="#">Sobre nosotros</a></li>
						<li ><a href="#">Envio </a></li>							
						<li ><a  href="#" >Contactanos </a></li>
						<li><a href="FilmUpdate.do?operacion=listado">Administrar</a></li>
					</ul>
				</div>
				<!-- menu nav -->
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /NAVIGATION -->

	<!-- HOME -->
	<div id="home">
		<!-- container -->
		<div class="container">
			<!-- home wrap -->
			<div class="home-wrap">
				<!-- home slick -->
				<div id="home-slick">
					<!-- banner -->
					<div class="banner banner-1">
						<img src="https://thedailycav.files.wordpress.com/2018/02/estrenos-de-cine-16-de-febrero-1.jpg?w=1200" alt="">
						<!--<div class="banner-caption text-center">
							<h1>Bags sale</h1>
							<h3 class="white-color font-weak">Up to 50% Discount</h3>
							<button class="primary-btn">Shop Now</button>
						</div>-->
					</div>
					<!-- /banner -->

					<!-- banner -->
					<div class="banner banner-1">
						<img src="https://www.infobae.com/new-resizer/GKu-cYyg5RORnFWG9B2h3_dzxgQ=/1200x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2017/11/17105842/Estrenos.jpg" alt="">
						
					</div>
					<!-- /banner -->

					<!-- banner -->
					<div class="banner banner-1">
						<img src="https://www.infobae.com/new-resizer/1d5KDvFDiXQE-nQ60LGYBmefG9M=/1200x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2017/09/29113802/cine-portada.jpg" alt="">
						
					</div>
					<!-- /banner -->
				</div>
				<!-- /home slick -->
			</div>
			<!-- /home wrap -->
		</div>
		<!-- /container -->
	</div>
	<!-- /HOME -->
	
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