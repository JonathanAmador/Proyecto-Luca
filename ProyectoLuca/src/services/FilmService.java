package services;

import java.sql.SQLException;
import java.util.List;

import data.DataFilm;
import data.IDataFilm;
import model.Film;
import model.TypeGenre;

public class FilmService implements IFilmService {

	private IDataFilm dataFilm = new DataFilm();

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
	@Override
	public List<Film> showListFilm(String titulo, String director, TypeGenre genre, int year) throws SQLException {
		return dataFilm.showListFilm(titulo, director, genre, year);

	}

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
	@Override
	public Film showFilm(int id) throws SQLException {
		return dataFilm.showFilm(id);
	}
	
	/**
	 * Metodo que añade nuevas peliculas a a base de datos en la tabla de film.
	 * 
	 *  @param film:  Objeto de tipo Film con los datos  recogidos del formulario de registro
	 *  
	 *  @throws SQLException: Excepcion que proporciona informacion de algún error con el acceso a la base de datos.
	    */
	
	public boolean addFilm(Film film) throws SQLException {
		return dataFilm.addFilm(film);
	}
	/**
	 * Metodo que actualiza  peliculas en la base de datos en la tabla de film.
	 * 
	 *  @param film:  Objeto de tipo Film con los datos recogidos del formulario de registro
	 *  
	 *  @throws SQLException: Excepcion que proporciona informacion de algún error con el acceso a la base de datos.
	    */
	public boolean updateFilm(Film film) throws SQLException{
		return dataFilm.updateFilm(film);
	}
	
	/**
	 * Metodo que borra peliculas de la base de datos en la tabla de film.
	 * 
	 *  @param film:  Objeto de tipo Film con los datos recogidos del formulario de registro
	 *  
	 *  @throws SQLException: Excepcion que proporciona informacion de algún error con el acceso a la base de datos.
	    */
	public boolean deleteFilm(Film film) throws SQLException{
		return dataFilm.deleteFilm(film);
	}
	
	/**
	 *  Metodo que crea una lista de las peliculas más actuales.
	 *  
	 *  @throws SQLException:
	 *             Excepcion que proporciona informacion de algún error con el
	 *             acceso a la base de datos.
	 */
	
	public List<Film> showNextFilm() throws SQLException{
		return dataFilm.showNextFilm();
	}

	@Override
	public List<Film> showAllFilm() throws SQLException {
		// TODO Auto-generated method stub
		return dataFilm.showAllFilm();
	}

}
