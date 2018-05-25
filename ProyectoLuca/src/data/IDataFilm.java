package data;

import java.sql.SQLException;
import java.util.List;
import model.Film;
import model.TypeGenre;

public interface IDataFilm {
	/**
	 * Método que prepara la respuesta para mostrar una lista con los
	 * resultados obtenidos de la búsqueda del usuario.
	 * 
	 * @param title:
	 *            Título de la película a buscar.
	 * @param director:
	 *            Director de la película a buscar.
	 * @param TypeGenre:
	 *            Enum que contiene los géneros de las películas.
	 * @param year:
	 *            Año de publicación de la película.
	 * @throws SQLException:
	 *             Excepción que proporciona información de algún error con el
	 *             acceso a la base de datos.
	 */
	public List<Film> showListFilm(String titulo, String director, TypeGenre genre, int year) throws SQLException;

	/**
	 * Método que prepara la respuesta de la búsqueda para mostrar la ficha de
	 * una película.
	 * 
	 * @param id:
	 *            Identificador de la película dentro de la base de datos.
	 * @throws SQLException:
	 *             Excepción que proporciona información de algún error con el
	 *             acceso a la base de datos.
	 */
	public Film showFilm(int id) throws SQLException;
	
	/**
	 * Metodo que añade nuevas peliculas a a base de datos en la tabla de film.
	 * 
	 *  @param film:  Objeto de tipo Film con los datos  recogidos del formulario de registro
	 *  
	 *  @throws SQLException: Excepcion que proporciona informacion de algún error con el acceso a la base de datos.
	    */

	public boolean addFilm(Film film) throws SQLException;
	
	/**
	 * Metodo que actualiza  peliculas en la base de datos en la tabla de film.
	 * 
	 *  @param film:  Objeto de tipo Film con los datos recogidos del formulario de registro
	 *  
	 *  @throws SQLException: Excepcion que proporciona informacion de algún error con el acceso a la base de datos.
	    */

	public boolean updateFilm(Film film) throws SQLException;
	
	/**
	 * Metodo que borra peliculas de la base de datos en la tabla de film.
	 * 
	 *  @param film:  Objeto de tipo Film con los datos recogidos del formulario de registro
	 *  
	 *  @throws SQLException: Excepcion que proporciona informacion de algún error con el acceso a la base de datos.
	    */

	public boolean deleteFilm(Film film) throws SQLException;

	/**
	 *  Metodo que crea una lista de las peliculas más actuales.
	 *  
	 *  @throws SQLException:
	 *             Excepcion que proporciona informacion de algún error con el
	 *             acceso a la base de datos.
	 */
	
	public List<Film> showNextFilm() throws SQLException;
	
	public List<Film> showAllFilm() throws SQLException;

}
