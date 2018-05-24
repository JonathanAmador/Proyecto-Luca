package data;

import java.sql.SQLException;
import java.util.List;

import model.User;

public interface IDataUser {

	/**
	 * Método que prepara la respuesta para mostrar una lista de usuarios
	 * registrados en la base de datos.
	 * 
	 * @throws SQLException:
	 *             Excepción que proporciona información de algún error con el
	 *             acceso a la base de datos.
	 */
	public List<User> showListUser() throws SQLException;

	/**
	 * Métode que prepara la respuesta para mostrar los datos de un usuario.
	 * 
	 * @param id:
	 *            Identificador del usuario dentro de la base de datos.
	 * @throws SQLException:
	 *             Excepción que proporciona información de algún error con el
	 *             acceso a la base de datos.
	 */
	public User showUser(int id) throws SQLException;

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
	public boolean addUser(User user) throws SQLException;

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
	public boolean checkMail(String mail) throws SQLException;

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
	public User checkUser(String mail, String pass) throws SQLException;

}
