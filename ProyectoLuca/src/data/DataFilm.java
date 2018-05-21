package data;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import model.Film;
import model.TypeGenre;
import util.Conexion;

public class DataFilm implements IDataFilm {

	@Override
	public List<Film> showListFilm(String title, String director ,TypeGenre genre, int year) throws SQLException {
		ResultSet result = null;// Objeto para guardar los resultados
		List<Film> listFilm = null;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				// Cogemos todos los datos de las películas
				result = sentencia.executeQuery("SELECT * FROM bd_film.film where Title like '%"+title+"%' and Director like '%"+director+"%' and Year like '%"+year+"%' and Genre like '%"+genre+"%';");
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
					listFilm.add(new Film(result.getInt(1), result.getString(2), result.getString(3), result.getString(4),
							result.getFloat(5), result.getInt(6), genre1, result.getString(8), result.getString(9)));
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

	@Override
	public Film showFilm(int id) throws SQLException {
		ResultSet result = null;// Objeto para guardar los resultados
		List<Film> listFilm = null;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				// Cogemos todos los datos de las películas
				result = sentencia.executeQuery("select * from Film where idFilm="+id+" ");
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
					listFilm.add(new Film(result.getInt(1), result.getString(2), result.getString(3), result.getString(4),
							result.getFloat(5), result.getInt(6), genre, result.getString(8), result.getString(9)));
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
