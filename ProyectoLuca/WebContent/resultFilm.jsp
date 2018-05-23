<%@ page import="java.util.*"%>
<!--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>-->
<!DOCTYPE html>
<html>
<head>
<title>Film</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<var="film" items="${film}">
	<h1>${film.title}</h1>
	<h3>${film.director}</h3>
	<h3>${film.genre.description}</h3>
	<h3>${film.year}</h3>
	<h3>${film.duration}</h3>
	<image src = "Image/${film.image}" >
	<p>${film.synopsis}</p>
	<h4>${film.price}</h4> 
	<!-- <p><input type = "submit" value="Añadir carrito"/></p>-->
	
	
</body>
</html>