package data;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import model.Film;
import model.TypeGenre;
import util.Conexion;

public class DataFilm implements IDataFilm {

	/**
	 * Método que prepara la respuesta para motrar una lista con los
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

}
