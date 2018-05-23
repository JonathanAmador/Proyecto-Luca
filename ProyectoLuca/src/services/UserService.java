package services;

import java.sql.SQLException;
import java.util.List;

import data.DataUser;
import data.IDataUser;
import model.User;



public class UserService implements IUserService {
private IDataUser dataUser= new DataUser();
	@Override
	public List<User> showListUser() throws SQLException {
		return dataUser.showListUser();
	}

	@Override
	public User showUser(int id) throws SQLException {
		return dataUser.showUser(id);
	}

	@Override
	public boolean addUser(User user) throws SQLException {
		return dataUser.addUser(user);
	}

	@Override
	public boolean checkMail(String mail) throws SQLException {
		return dataUser.checkMail(mail);
	}

	@Override
	public User checkUser(String mail, String pass) throws SQLException {
		return dataUser.checkUser(mail, pass);
	}
}


