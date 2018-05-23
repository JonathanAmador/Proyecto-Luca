package data;

import java.sql.SQLException;
import java.util.List;

import model.User;

public interface IDataUser {
	
	public List<User> showListUser() throws SQLException;
	public User showUser(int id) throws SQLException;
	public boolean addUser(User user) throws SQLException;
		
}
