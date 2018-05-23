package data;

import java.sql.SQLException;
import java.util.List;

import model.User;

public interface IDataUser {
	
	public List<User> showListUser() throws SQLException;
	public User showUser(int id) throws SQLException;
	public boolean addUser(User user) throws SQLException;
	public boolean checkMail(String mail) throws SQLException;
	public User checkUser(String mail, String pass) throws SQLException;
		
}
