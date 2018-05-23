package services;

import java.sql.SQLException;
import java.util.List;

import data.DataUser;
import data.IDataUser;
import model.User;

public class UserService implements IUserService {
	private IDataUser dataUser = new DataUser();

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
		return dataUser.showListUser();
	}

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
		return dataUser.showUser(id);
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
		return dataUser.addUser(user);
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
		return dataUser.checkMail(mail);
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
		return dataUser.checkUser(mail, pass);
	}
}
