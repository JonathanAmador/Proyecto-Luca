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
								</div> <strong class="text-uppercase">Mi carrito:</strong> <br> <span>35.20€</span>
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
													$32.50 <span class="qty">x3</span>
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
													$32.50 <span class="qty">x3</span>
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
			
			<!-- Product Single -->
						<!--<div class="col-md-4 col-sm-6 col-xs-6">
							<div class="product product-single">
								
								<div class="product-body">


								</div>
							</div>
						</div>
				<!-- /Product Single -->
				
				<!-- Product Single -->
				
					
						<div class="col-md-4 col-sm-6 col-xs-6">
							<div class="product product-single">
								
								<div class="product-body">
 <form method="post" action="/UserController.do" >
  <div class="container">
    <h1>Registrate</h1>
    <p>Rellena todos los campos.</p>

     
    <p><label for="name"><b>Nombre:*</b></label>
    <p><input type="text" placeholder="Introduce tu nombre" name="name" required size="50">
    
    <p><label for="surname"><b>Apellido:*</b></label>
    <p><input type="text" placeholder="Introduce tu apellido" name="surname" required size="50">
    
    <p><label for="address"><b>Direccion:*</b></label>
    <p><input type="text" placeholder="Introduce tu nombre" name="address" required size="50">
    
    <p><label for="phone"><b>Numero de telefono:*</b></label>
    <p><input type="number" placeholder="Numero de telefono" name="phone" required size="10">
   
   
    <p><label for="mail"><b>Correo electronio:*</b></label>
    <p><input type="email" placeholder="Introduce tu correo electronico" name="mail" required size="50">

    <p><label for="pass"><b>Contrase&ntilde;a:*</b></label>
    <p><input type="password" placeholder="Introduce una contrase&ntilde;a" name="pass" required size="50">
    
    
    <p>Al crear tu cuenta estas acceptando nuestros <a href="#" style="color:dodgerblue">Terminos & Condicones</a>.</p>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancelar</button>
      <button type="submit" class="signupbtn">Registrate</button>
    </div>
  </div>
</form>

								</div>
							</div>
						</div>
				<!-- /Product Single -->
				
				<!-- Product Single -->
						<div class="col-md-4 col-sm-6 col-xs-6">
							<div class="product product-single">
								
								<div class="product-body">


								</div>
							</div>
						</div>
				<!-- /Product Single -->
				
				<!-- Product Single -->
				
					
						<div class="col-md-4 col-sm-6 col-xs-6">
							<div class="product product-single">
								
								<div class="product-body">
<h2>Iniciar sesión</h2>
<p>Rellena todos los campos.</p>

<form method="POST" action="">

  <div class="container">
   <p> <label for="mail"><b>Correo Electronio:*</b></label></p>
    <p><input type="text" placeholder="Introduce correo electronico" name="mail" required size="50"></p>

    <p> <label for="pass"><b>Contraseña:*</b></label></p>
   <p> <input type="password" placeholder="Introduce tu contraseña" name="pass" required size="50"></p>
        
    <button type="submit">Login</button>
    <p><label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
        </label></p>
  </div>

</form>

								</div>
							</div>
						</div>
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
