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
		<%@include file="header-footer/header.jsp"%>
	</header>
	<!-- /HEADER -->

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
							<form method="post" action="/UserController.do">
								<div class="container">
									<h1>Registrate</h1>
									<p>Rellena todos los campos.</p>


									<p>
										<label for="name"><b>Nombre:*</b></label>
									<p>
										<input type="text" placeholder="Introduce tu nombre"
											name="name" required size="50">
									<p>
										<label for="surname"><b>Apellido:*</b></label>
									<p>
										<input type="text" placeholder="Introduce tu apellido"
											name="surname" required size="50">
									<p>
										<label for="address"><b>Direccion:*</b></label>
									<p>
										<input type="text" placeholder="Introduce tu nombre"
											name="address" required size="50">
									<p>
										<label for="phone"><b>Numero de telefono:*</b></label>
									<p>
										<input type="number" placeholder="Numero de telefono"
											name="phone" required size="10">
									<p>
										<label for="mail"><b>Correo electronio:*</b></label>
									<p>
										<input type="email"
											placeholder="Introduce tu correo electronico" name="mail"
											required size="50">
									<p>
										<label for="pass"><b>Contrase&ntilde;a:*</b></label>
									<p>
										<input type="password"
											placeholder="Introduce una contrase&ntilde;a" name="pass"
											required size="50">
									<p>
										Al crear tu cuenta estas acceptando nuestros <a href="#"
											style="color: dodgerblue">Terminos & Condicones</a>.
									</p>

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

						<div class="product-body"></div>
					</div>
				</div>
				<!-- /Product Single -->

				<!-- Product Single -->


				<div class="col-md-4 col-sm-6 col-xs-6">
					<div class="product product-single">

						<div class="product-body">
							<h2>Iniciar sesi&oacute;n</h2>
							<p>Rellena todos los campos.</p>

							<form method="POST" action="">

								<div class="container">
									<p>
										<label for="mail"><b>Correo Electronio:*</b></label>
									</p>
									<p>
										<input type="text" placeholder="Introduce correo electronico"
											name="mail" required size="50">
									</p>

									<p>
										<label for="pass"><b>Contrase&ntilde;a:*</b></label>
									</p>
									<p>
										<input type="password" placeholder="Introduce tu contraseña"
											name="pass" required size="50">
									</p>

									<button type="submit">Inicia sesi&oacute;n</button>
									<p>
										<label> <input type="checkbox" checked="checked"
											name="remember"> Remember me
										</label>
									</p>
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
