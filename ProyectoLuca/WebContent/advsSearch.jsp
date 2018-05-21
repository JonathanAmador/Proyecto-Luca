<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="css/styleadvsearch.css">
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
     
</div>
    </div>
</header>
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
         <main>
            <!-- Photo Grid -->
            <div class="main">
               <div id="main-adv-search-wrapper">
                  <div class="fa-shadow" id="adv-search-container">
                     <div id="adv-search-main-title"><b>BUSCADOR AVANZADO</b><span> (Buscar en los campos que selecciones)</span></div>
                     <div id="adv-search-filter-container">
                        <form method="POST" action="FilmListSelect.do">
                           <div id="text-option-container" class="form-section">
                              <!--<div class="title-filter">
                                 Texto:                    
                              </div>-->
                              <div>
                                <p><label for="">Titulo </label></p>
                                 <input name="title" type="text" placeholder="Busca tu pelicula ..." name="search" size="50">
                                 <p><label for="">Director </label></p>
                                 <input name="director" type="text" placeholder="Busca tu pelicula ..." name="search" size="50">

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
									<div class="title-filter">Género:</div>
									<div>
										<select name="genre">
											<option value="">-Todos los géneros-</option>
											<option value="ACTION">Acción</option>
											<option value="ANIMATION">Animación</option>
											<option value="AVENTURE">Aventura</option>
											<option value="SCIENCE">Ciencia ficción / Fantástico</option>
											<option value="COMEDY">Comédia</option>
											<option value="DRAMA">Drama</option>
											<option value="DOCUMENTARY">Documentál</option>
											<option value="TERROR">Terror</option>
											<option value="THRILLER">Thriller</option>
										</select>
									</div>
								</div>
							</div>
							<div id="year-container" class="form-section">
								<div>
									<div class="title-filter">Año:</div>
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

		</main>
		<div class="right">
			<h2>Carrito de compra</h2>
			<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
		</div>
	</div>
	<div
		style="background-color: #e6b800; text-align: center; padding: 10px; margin-top: 7px;">Â©
		Proyecto LucaTic Grupo A</div>
</body>
</html>