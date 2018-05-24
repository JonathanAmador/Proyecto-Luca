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

}
