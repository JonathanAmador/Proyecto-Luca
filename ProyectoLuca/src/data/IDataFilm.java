package data;

import java.sql.SQLException;
import java.util.List;
import model.Film;
import model.TypeGenre;

public interface IDataFilm {

	public List<Film> showListFilm(String titulo, String director ,TypeGenre genre, int year) throws SQLException;
	public Film showFilm(int id) throws SQLException;

}
