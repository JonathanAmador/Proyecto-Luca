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
	public List<Film> showListFilm() throws SQLException {
		ResultSet result = null;// Objeto para guardar los resultados
		List<Film> listFilm = null;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				// Cogemos todos los datos de las películas
				result = sentencia.executeQuery("select * from Film");
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
					listFilm.add(new Film(result.getString(1), result.getString(2), result.getString(3),
							result.getFloat(4), result.getInt(5), genre, result.getString(7)));
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
