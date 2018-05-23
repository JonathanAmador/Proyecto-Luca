package data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.User;
import util.Conexion;

public class DataUser implements IDataUser {

	@Override
	public User showUser(int id) throws SQLException {
		ResultSet result = null;// Objeto para guardar los resultados
		List<User> listUser = null;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				// Cogemos todos los datos de las películas
				result = sentencia.executeQuery("select * from Film where idFilm=" + id + " ");
			}
			if (!result.next()) {
				return null;
			} else {
				listUser = new ArrayList<User>();
				result.beforeFirst();
				while (result.next()) {
					listUser.add(new User(result.getInt(1), result.getString(2), result.getString(3),
							result.getString(4), result.getString(5), result.getString(6), result.getInt(7)));
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
		return listUser.get(0);
	}

	@Override
	public List<User> showListUser() throws SQLException {
		ResultSet result = null;// Objeto para guardar los resultados
		List<User> listUser = null;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				result = sentencia.executeQuery("SELECT * FROM bd_film.user;");
			}
			if (!result.next()) {
				return null;
			} else {
				listUser = new ArrayList<User>();
				result.beforeFirst();
				while (result.next()) {
					listUser.add(new User(result.getInt(1), result.getString(2), result.getString(3),
							result.getString(4), result.getString(5), result.getString(6), result.getInt(7)));
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
		return listUser;
	}

	@Override
	public boolean addUser(User user) throws SQLException {
		boolean insert = false;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				sentencia.executeQuery(
						"INSERT INTO `bd_film`.`user` (`name`, `surname`, `mail`, `password`, `address`, `phone`) VALUES ('"
								+ user.getName() + "', '" + user.getSurname() + "', '" + user.getEmail() + "', '"
								+ user.getPass() + "', '" + user.getAddress() + "', '" + user.getPhone() + "');");
				insert = true;
			}
		} catch (SQLException e2) {
			throw e2;
		}
		return insert;
	}

	@Override
	public boolean checkMail(String mail) throws SQLException {
		boolean isMail = false;
		ResultSet result = null;// Objeto para guardar los resultados
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				result = sentencia.executeQuery("SELECT * FROM bd_film.;");
			}
			if (!result.next()) {
				isMail = false;
			} else {
				result.beforeFirst();
				while (result.next() || isMail == true) {
					if (mail == result.getString(4)) {
						isMail = true;
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

		return isMail;
	}

}
