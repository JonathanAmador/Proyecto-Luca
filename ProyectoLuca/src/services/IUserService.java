package services;

import java.sql.SQLException;
import java.util.List;

import model.User;

public interface IUserService {

	public List<User> showListUser() throws SQLException;
	public User showUser(int id) throws SQLException;
	public boolean addUser(User user) throws SQLException;
	public boolean checkMail(String Mail) throws SQLException;

}
