<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Film</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c var="film" items="${styles}">
	<h1>${film.title}</h1>
	<h3>${film.director}</h3>
	<h3>${film.genre.toString()}</h3>
	<h3>${film.year}</h3>
	<h3>${film.duration}</h3>
	
	<p>${film.synopsis}</p>
	<h4>${film.price}</h4> 
	<!-- <p><input type = "submit" value="Añadir carrito"/></p>-->
	</c>
	
</body>
</html>