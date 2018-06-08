package data;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.sql.*;

import model.Film;
import model.TypeGenre;
import util.Conexion;
import java.util.Date;

public class DataFilm implements IDataFilm {

	/**
	 * Método que prepara la respuesta para motrar una lista con los resultados
	 * obtenidos de la búsqueda del usuario.
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
	public List<Film> showListFilm(String title, String director, TypeGenre genre, int year) throws SQLException {
		ResultSet result = null;// Objeto para guardar los resultados
		List<Film> listFilm = null;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				// Cogemos todos los datos de las películas

				String genreCadena = "%";
				if (!genre.equals(TypeGenre.ALL_GENRE)) {
					genreCadena = genre.toString();
				}

				if (director == null) {
					director = "%";
				}

				if (title == null) {
					title = "%";
				}

				if (year == 0) {

					System.out.println("Entra en DATOS");
					result = sentencia.executeQuery("SELECT * FROM bd_film.film where Title like '%" + title
							+ "%' and Director like '%" + director + "%' and Genre like '%" + genreCadena + "%';");
				} else {

					result = sentencia.executeQuery("SELECT * FROM bd_film.film where Title like '%" + title
							+ "%' and Director like '%" + director + "%' and Year like '%" + year
							+ "%' and Genre like '%" + genreCadena + "%';");
				}

			}
			if (!result.next()) {
				return null;
			} else {
				listFilm = new ArrayList<Film>();
				result.beforeFirst();
				while (result.next()) {

					TypeGenre genre1 = TypeGenre.ACTION;
					for (TypeGenre a : TypeGenre.values()) {
						if (a.toString() == result.getString(6)) {
							genre1 = a;
						}
					}
					listFilm.add(new Film(result.getInt(1), result.getString(2), result.getString(3),
							result.getString(4), result.getFloat(5), result.getInt(6), genre1, result.getString(8),
							result.getString(9)));
				}
				System.out.println("Devolviendo lista de peliculas");

			}
		} catch (SQLException e2) {
			throw e2;
		} finally {
			if (result != null) {
				try {
					result.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return listFilm;
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
		ResultSet result = null;// Objeto para guardar los resultados
		List<Film> listFilm = null;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				// Cogemos todos los datos de las películas
				result = sentencia.executeQuery("select * from Film where idFilm=" + id + " ");
			}
			if (!result.next()) {
				return null;
			} else {
				listFilm = new ArrayList<Film>();
				result.beforeFirst();
				while (result.next()) {

					TypeGenre genre = TypeGenre.ACTION;
					for (TypeGenre a : TypeGenre.values()) {
						if (a.toString() == result.getString(6)) {
							genre = a;
						}
					}
					listFilm.add(new Film(result.getInt(1), result.getString(2), result.getString(3),
							result.getString(4), result.getFloat(5), result.getInt(6), genre, result.getString(8),
							result.getString(9)));
				}

			}
		} catch (SQLException e2) {
			throw e2;
		} finally {
			if (result != null) {
				try {
					result.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return listFilm.get(0);
	}

	/**
	 * Metodo que añade nuevas peliculas a a base de datos en la tabla de film.
	 * 
	 * @param film:
	 *            Objeto de tipo Film con los datos recogidos del formulario de
	 *            registro
	 * 
	 * @throws SQLException:
	 *             Excepcion que proporciona informacion de algún error con el
	 *             acceso a la base de datos.
	 */
	@Override
	public boolean addFilm(Film film) throws SQLException {
		boolean insert = false;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				System.out.println("Introduciendo Pelicula" + film);
				sentencia.executeUpdate(
						"INSERT INTO `bd_film`.`film`(`Title`, `Director`, `Synopsis`, `Price`, `Year`, `Genre`, `Imagen`, `Duration`) Values ( '"
								+ film.getTitle() + "', '" + film.getDirector() + "', '" + film.getSynopsis() + "', '"
								+ film.getPrice() + "', '" + film.getYear() + "', '" + film.getGenre() + "', '"
								+ film.getImage() + "', '" + film.getDuration() + "', '");
				insert = true;

			}
		} catch (SQLException e2) {
			throw e2;
		}
		return insert;

	}

	/**
	 * Metodo que actualiza peliculas en la base de datos en la tabla de film.
	 * 
	 * @param film:
	 *            Objeto de tipo Film con los datos recogidos del formulario de
	 *            registro
	 * 
	 * @throws SQLException:
	 *             Excepcion que proporciona informacion de algún error con el
	 *             acceso a la base de datos.
	 */

	@Override
	public boolean updateFilm(Film film) throws SQLException {
		boolean update = false;

		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				System.out.println(" Actualizando pelicula" + film);
				
				sentencia.executeUpdate("UPDATE `film` SET Title='" + film.getTitle() + "',Director='"
						+ film.getDirector() + "',Synopsis='" + film.getSynopsis() + "',Price='" + film.getPrice()
						+ "',Genre='" + film.getGenre() + "',Image='" + film.getImage() +"',Duration='" + film.getDuration() + "' WHERE idFilm='" + film.getIdFilm() + "'");

				update = true;
			}
		} catch (SQLException e2) {
			throw e2;
		}
		return update;
	}

	/**
	 * Metodo que borra peliculas de la base de datos en la tabla de film.
	 * 
	 * @param film:
	 *            Objeto de tipo Film con los datos recogidos del formulario de
	 *            registro
	 * 
	 * @throws SQLException:
	 *             Excepcion que proporciona informacion de algún error con el
	 *             acceso a la base de datos.
	 */

	@Override
	public boolean deleteFilm(int id) throws SQLException {
		boolean delete = false;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				System.out.println("Borrando ");
				sentencia.executeUpdate("delete from film where idFilm ='" + id + "'");

				delete = true;

			}
		} catch (SQLException e2) {
			throw e2;
		}
		return delete;

	}
	/**
	 *  Metodo que crea una lista de las peliculas más actuales.
	 *  
	 *  @throws SQLException:
	 *             Excepcion que proporciona informacion de algún error con el
	 *             acceso a la base de datos.
	 */

	public List<Film> showNextFilm() throws SQLException {
		ResultSet result = null;
		List<Film> listNextFilm = null;
		Date fecha = new Date();
		int year = fecha.getYear();
		year = year - 2;// va a guardar 2 años atras de la fecha actual

		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				result = sentencia.executeQuery("select * FROM Film WHERE Year >  " + year + " ");

				if (!result.next()) {
					return null;
				} else {
					listNextFilm = new ArrayList<Film>();
					result.beforeFirst();
					while (result.next()) {

						TypeGenre genre1 = TypeGenre.ACTION;
						for (TypeGenre a : TypeGenre.values()) {
							if (a.toString() == result.getString(6)) {
								genre1 = a;
							}
						}
						listNextFilm.add(new Film(result.getInt(1), result.getString(2), result.getString(3),
								result.getString(4), result.getFloat(5), result.getInt(6), genre1, result.getString(8),
								result.getString(9)));
						System.out.println("Entra en result");

					}

				}
			}
		} catch (SQLException e2) {
			throw e2;
		} finally {
			if (result != null) {
				try {
					result.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return listNextFilm;
	}
	
	public List<Film> showAllFilm() throws SQLException {
		ResultSet result = null;// Objeto para guardar los resultados
		List<Film> listFilm = null;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				// Cogemos todos los datos de las películas
				result=sentencia.executeQuery("SELECT * FROM bd_film.film;");
			}
			if (!result.next()) {
				return null;
			} else {
				listFilm = new ArrayList<Film>();
				result.beforeFirst();
				while (result.next()) {

					TypeGenre genre1 = TypeGenre.ACTION;
					for (TypeGenre a : TypeGenre.values()) {
						if (a.toString() == result.getString(6)) {
							genre1 = a;
						}
					}
					listFilm.add(new Film(result.getInt(1), result.getString(2), result.getString(3),
							result.getString(4), result.getFloat(5), result.getInt(6), genre1, result.getString(8),
							result.getString(9)));
					System.out.println("Entra en result");

				}

			}
		} catch (SQLException e2) {
			throw e2;
		} finally {
			if (result != null) {
				try {
					result.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return listFilm;
	}

	}

