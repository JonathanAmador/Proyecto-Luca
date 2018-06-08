<%@ page import="java.util.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>-->
<!DOCTYPE html>
<html>

<head>

<meta name="viewport" content="width=device-width, initial-scale=1"
>
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
				<li class="active">Resultado de tu b&uacute;squeda</li>
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
				<form action="FilmUpdate.do?operacion=update" method="POST">
                    <table border="1">
                        <tr>
                            <th>Codigo</th>
                            <td>${film.idFilm}</td>
                        </tr>
                        <tr>
                            <th>Titulo</th>
                            <td><input type="text" name="title" value="${film.title}" size="30" /></td>
                        </tr>
                        <tr>
                            <th>Director</th>
                            <td><input type="text" name="director" value="${film.director}" size="30" /></td>
                        </tr>
                        <tr>
                            <th>Synopsis</th>
                            <td><input type="text" name="synopsis" value="${film.synopsis}" size="100" /></td>
                        </tr>
                        <tr>
                            <th>Precio</th>
                            <td><input type="text" name="price" value="${film.price}" size="30" /></td>
                        </tr>
                        <tr>
                            <th>Año</th>
                            <td><input type="text" name="year" value="${film.year}" size="30" /></td>
                        </tr>
                        <tr>
                            <th>Genero</th>
                            <td><input type="text" name="genre" value="${film.genre}" size="30" /></td>
                        </tr>
                        <tr>
                            <th>UrlImagen</th>
                            <td><input type="text" name="image" value="${film.image}" size="30" /></td>
                        </tr>
                        <tr>
                            <th>Duracion</th>
                            <td><input type="text" name="duration" value="${film.duration}" size="30" /></td>
                        </tr>
                    </table>
                    <input type="hidden" name="idFilm" value="${film.idFilm}" />
                    <input type="submit" value="Actualizar Datos" />
                </form>
				
				<!-- /Product Single -->

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<footer>

		<!-- FOOTER -->
		<header>
			<%@include file="header-footer/Footer.jsp"%>
		</header>
		<!-- /FOOTER -->


	</footer>

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>