<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="styleadvsearch.css">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<script src="include.js"></script>
</head>
<body>
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
							<input type="text" placeholder="Busca el titulo de la pelicula..."
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
							</div> <a href="SesionRegistrate.jsp" class="text-uppercase">Inicio/Resgistrate</a> 
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
												<img src="./img/thumb-product01.jpg" alt="">
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
												<img src="./img/thumb-product01.jpg" alt="">
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
				<form method="POST" action="FilmListSelect.do">
				<div class="category-nav show-on-click">
					<span class="category-header">Genero <i class="fa fa-list"></i></span>
					<ul class="category-list">
					
						<li>
						<button class="main-btn quick-view" name="genre" value="ACTION" style="border: 0px">
						<a href="#">Acci&oacute;n </a>
						</button></li>
						<li>
						<button class="main-btn quick-view" name="genre" value="ANIMATION" >
						<a href="#">Animaci&oacute;n</a>
						</button></li>
						<li >
						<button class="main-btn quick-view" name="genre" value="SCIENCE">
						<a href="#">Ciencia ficci&oacute;n </a>
						</button></li>
						<li><button class="main-btn quick-view" name="genre" value="COMEDY">
						<a href="#">Comedia</a>
						</button></li>
						<li>
						<button class="main-btn quick-view" name="genre" value="DRAMA">
						<a href="#">Drama</a>
						</button></li>
						<li>
						<button class="main-btn quick-view" name="genre" value="DOCUMENT">
						<a href="#">Documentales </a>
						</button></li>
						<li>
						<button class="main-btn quick-view" name="genre" value="TERROR">
						<a href="#">Terror</a>
						</button></li>
						<li>
						<button class="main-btn quick-view" name="genre" value="THRILLER">
						<a href="#">Thriller</a>
						</button></li>
					</ul>
				</div>
				</form>
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
</body>

</html>