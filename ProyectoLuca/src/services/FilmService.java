package services;

import java.sql.SQLException;
import java.util.List;

import data.DataFilm;
import data.IDataFilm;
import model.Film;
import model.TypeGenre;

public class FilmService implements IFilmService{

	private IDataFilm dataFilm = new DataFilm();
	
	@Override
	public List<Film> showListFilm(String titulo, String director ,TypeGenre genre, int year) throws SQLException {
		return dataFilm.showListFilm(titulo,director, genre, year);
		
	}
	
	/*public List<Film> showListFilm(String titulo, String director , int year) throws SQLException {
		return dataFilm.showListFilm(titulo,director, year);
		
	}*/

	@Override
	public Film showFilm(int id) throws SQLException {
		return dataFilm.showFilm(id);
	}

}
