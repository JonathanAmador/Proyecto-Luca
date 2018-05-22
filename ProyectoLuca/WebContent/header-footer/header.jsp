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
      <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
      <script src="include.js"></script>
   </head>
<body>
<header>

  <div class="topnav">
        <h1>Pelis<span>Online</span></h1>
  <div class="search-container">
      
    <form method="POST" action="FilmListSelect.do">
      <input type="text" placeholder="Busca tu pelicula por titulo o director..." name="title" size="50" />
      <input id="buscar" type="submit" value="Buscar" />
      
    </form>
      <a href="advsSearch.jsp" class="id" id="advsearch">Busqueda avazada</a>
   </div>
   </div>
    
</header>
    
  <nav>
	<div style="overflow:auto">
	  <div class="menu">
	    <a href="#"><strong>Accion</strong></a>
	    <a href="#"><strong>Animacion</strong></a>
	    <a href="#"><strong>Ciencia Ficcion</strong></a>
	    <a href="#"><strong>Comedia</strong></a>
	    <a href="#"><strong>Drama</strong></a>
	    <a href="#"><strong>Documentales</strong></a>
	    <a href="#"><strong>Terror</strong></a>
	    <a href="#"><strong>Thriller</strong></a>
	  </div>
	  </div>
  </nav>
</body>

</html>