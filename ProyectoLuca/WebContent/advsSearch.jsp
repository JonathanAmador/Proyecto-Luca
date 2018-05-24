<%@ page import="java.util.*"%>
<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>-->
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
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
						<div id="adv-search-main-title">
							<b>BUSCADOR AVANZADO</b><span> (Buscar en los campos que
								selecciones)</span>
						</div>
						<div id="adv-search-filter-container">
							<form method="POST" action="FilmListSelect.do">
								<div id="text-option-container" class="form-section">
									<!--<div class="title-filter">
                                 Texto:                    
                              </div>-->
									<div>
										<p>
											<label for="">Titulo </label>
										</p>
										<input name="title" type="text"
											placeholder="Busca tu pelicula ..." name="search" size="50">
										<p>
											<label for="">Director </label>
										</p>
										<input name="director" type="text"
											placeholder="Busca tu pelicula ..." name="search" size="50">

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
	<footer>
		<%@include file="header-footer/Footer.jsp"%>
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