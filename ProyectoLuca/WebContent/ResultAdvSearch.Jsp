<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/style.css">
<title>Insert title here</title>
</head>
<body>

	<header> 
	<%@include file="header-footer/header.jsp"%>
	</header>
	<nav>
	<div style="overflow: auto">
		<div class="menu">
			<a href="#"><strong>Accion</strong></a> <a href="#"><strong>Animacion</strong></a>
			<a href="#"><strong>Ciencia Ficcion</strong></a> <a href="#"><strong>Comedia</strong></a>
			<a href="#"><strong>Drama</strong></a> <a href="#"><strong>Documentales</strong></a>
			<a href="#"><strong>Terror</strong></a> <a href="#"><strong>Thriller</strong></a>
		</div>
	</nav>
	<main> <!-- Main  -->
	<div class="main">
		<!-- First row  -->

		<div class="row">
			<h2 style="padding: 0px 0px 0px 20px">Resultado de busqueda</h2>
			<div class="column">
				<img class="column"
					src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg"
					style="width: 100%"> <a href="">Nombre de pelicula </a>
			</div>
			<div class="column">
				<img class="column"
					src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg"
					style="width: 100%"> <a href="">Nombre de pelicula </a>
			</div>
			<div class="column">
				<img class="column"
					src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg"
					style="width: 100%"> <a href="">Nombre de pelicula </a>
			</div>
		</div>

	</div>
	</main>

	<div class="right">
		<h2>About</h2>
		<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
	</div>
	</div>
	<footer> <%@include file="header-footer/footer.jsp"%>
	</footer>
</body>
</html>