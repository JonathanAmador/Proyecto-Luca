package data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.User;
import util.Conexion;

public class DataUser implements IDataUser {

	/**
	 * Métode que prepara la respuesta para mostrar los datos de un usuario.
	 * 
	 * @param id:
	 *            Identificador del usuario dentro de la base de datos.
	 * @throws SQLException:
	 *             Excepción que proporciona información de algún error con el
	 *             acceso a la base de datos.
	 */
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

	/**
	 * Método que prepara la respuesta para mostrar una lista de usuarios
	 * registrados en la base de datos.
	 * 
	 * @throws SQLException:
	 *             Excepción que proporciona información de algún error con el
	 *             acceso a la base de datos.
	 */
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

	/**
	 * Método que añade usuarios nuevos a la base de datos.
	 * 
	 * @param user:
	 *            Objeto de tipo User con los datos recogidos del formulario de
	 *            registro.
	 * @throws SQLException:
	 *             Excepción que proporciona información de algún error con el
	 *             acceso a la base de datos.
	 */
	@Override
	public boolean addUser(User user) throws SQLException {
		boolean insert = false;
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				System.out.println("Insertando usuario:"+user);
				sentencia.executeUpdate(
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

	/**
	 * Método que comprueba que el email no está registrado en la base de datos
	 * para permitir un alta nueva.
	 * 
	 * @param mail:
	 *            String que contiene el valor del email del usuario introducido
	 *            en el formulario.
	 * @throws SQLException:
	 *             Excepción que proporciona información de algún error con el
	 *             acceso a la base de datos.
	 * 
	 */
	@Override
	public boolean checkMail(String mail) throws SQLException {
		boolean isMail = false;
		ResultSet result = null;// Objeto para guardar los resultados
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				result = sentencia.executeQuery("SELECT * FROM bd_film.user;");
			}
			if (!result.next()) {
				isMail = false;
			} else {
				result.beforeFirst();
				while (result.next() && isMail == false) {
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

	/**
	 * Método que comprueba el email y el pass en la base de datos para validar
	 * el login.
	 * 
	 * @param mail:
	 *            String que contiene el valor del email del usuario.
	 * @param pass:
	 *            String que contiene el valor del password del usuario.
	 * @throws SQLException:
	 *             Excepción que proporciona información de algún error con el
	 *             acceso a la base de datos.
	 */
	@Override
	public User checkUser(String mail, String pass) throws SQLException {
		boolean isUser = false;
		User user = null;
		ResultSet result = null;// Objeto para guardar los resultados
		try {
			Statement sentencia = Conexion.openStatement();
			synchronized (sentencia) {
				//result = 8;
						if(sentencia.executeQuery("SELECT * FROM bd_film.user where mail like '"+mail+"' and password like '"+pass+"';") != null){
							System.out.println("entrando en select");
							result = sentencia.executeQuery("SELECT * FROM bd_film.user where mail='"+mail+"' and password='"+pass+"';");
							System.out.println(result.toString());
						}
			}
			if (!result.next()) {
				System.out.println("No hay usuario "+new User(result.getInt(1),result.getString(2),result.getString(3),result.getString(4),result.getString(5),result.getString(6),result.getInt(7)) );
				return null;
			} else {

				isUser=true;
				user = new User(result.getInt(1),result.getString(2),result.getString(3),result.getString(4),result.getString(5),result.getString(6),result.getInt(7));
				result.beforeFirst();
				while (result.next() && isUser == true) {
					if (mail == result.getString(4) && pass == result.getString(5)) {
						isUser = true;
						user = new User(result.getInt(1), result.getString(2), result.getString(3), result.getString(4),
								result.getString(5), result.getString(6), result.getInt(7));
					}
				}
			}
				System.out.println(isUser);
		} catch (SQLException e2) {
			System.out.println("Exception"+e2.toString());
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
		return user;
	}

}
