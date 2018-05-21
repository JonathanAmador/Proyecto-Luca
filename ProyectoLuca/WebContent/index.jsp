<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body>
<header>

    <div class="topnav">
        <h1>Pelis<span>Online</span></h1>
  <div class="search-container">
      
    <form method="POST" action="FilmListSelect.do">
      <input type="text" placeholder="Busca tu pelicula por titulo o director..." name="search" size="50">
      <input id="buscar" type="submit" id="button-search" value="Buscar">
      
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
  </nav>
<main>

  <!-- Main  -->
    <div class="main">
  <!-- First row  -->
    
    <div class="row">
    <h2 style="padding: 0px 0px 0px 20px">Nombre de Pelicula</h2>
  <div class="column" >
    <img  class="column" src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg" style="width: 100%" >
    <a href="">Nombre de pelicula </a>
  </div>
  <div class="column" >
    <img  class="column" src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg" style="width: 100%" >
   <a href="">Nombre de pelicula </a>
  </div>
  <div class="column">
    <img  class="column" src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg" style="width: 100%" >
    <a href="">Nombre de pelicula </a>
  </div>
</div>

<!-- Second row  -->

<div class="row">
  <div class="column" >
    <img  class="column" src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg" style="width: 100%" >
    <a href="">Nombre de pelicula </a>
  </div>
  <div class="column" >
    <img  class="column" src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg" style="width: 100%" >
   <a href="">Nombre de pelicula </a>
  </div>
  <div class="column">
    <img  class="column" src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg" style="width: 100%" >
    <a href="">Nombre de pelicula </a>
  </div>
</div>

<!-- Third row  -->

<div class="row">
  <div class="column" >
    <img  class="column" src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg" style="width: 100%" >
    <a href="">Nombre de pelicula </a>
  </div>
  <div class="column" >
    <img  class="column" src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg" style="width: 100%" >
   <a href="">Nombre de pelicula </a>
  </div>
  <div class="column">
    <img  class="column" src="https://pics.filmaffinity.com/deadpool_2-173899450-mmed.jpg" style="width: 100%" >
    <a href="">Nombre de pelicula </a>
  </div>
</div>

	</div>
</main>
 
    <div class="right">
    <h2>About</h2>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
  </div>
</div>

<div style="background-color:#e6b800;text-align:center;padding:10px;margin-top:7px;">© Proyecto LucaTic Grupo A</div>

</body>
</html>
