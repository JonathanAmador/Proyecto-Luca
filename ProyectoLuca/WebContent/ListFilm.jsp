<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style/style.css">
<title>Insert title here</title>
</head>
<body>

	<header> <%@include file="header-footer/header.jsp"%>
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
<ul>
<c:forEach var="film" items="${listFilm}">
	<form method="POST" action="FilmSelect.do"><li>${film.title} </li>
	<button name="id" value="${film.idFilm}"><image src = "${film.image}" ></button>
	<li>${film.price}</li> </form>
	<!-- <p><input type = "submit" value="A�adir carrito"/></p>-->
	</c:forEach>
</ul>

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