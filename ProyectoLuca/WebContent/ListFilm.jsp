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
	
<ul>
<c:forEach var="film" items="${listFilm}">
	<form method="POST" action="FilmSelect.do"><li>${film.title} </li>
	<button name="id" value="${film.idFilm}"><image src = "${film.image}" ></button>
	<li>${film.price}</li> </form>
	<!-- <p><input type = "submit" value="Añadir carrito"/></p>-->
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