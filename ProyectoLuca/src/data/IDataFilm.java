package data;

import java.sql.SQLException;
import java.util.List;
import model.Film;

public interface IDataFilm {

	public List<Film> showListFilm() throws SQLException;

}
