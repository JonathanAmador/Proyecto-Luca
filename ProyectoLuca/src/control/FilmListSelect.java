package control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Film;
import model.TypeGenre;
import services.FilmService;
import services.IFilmService;

import java.util.*;

@WebServlet(name = "FilmListSelect", urlPatterns = { "/FilmListSelect.do" }, asyncSupported = false)
public class FilmListSelect extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private IFilmService filmService = new FilmService();

	
	/**
	 * 
	 * @param request:
	 *            Recibe la petición del usuario.
	 * @param response:
	 *            Recoge la respuesta.
	 * @throws ServletException:
	 *             Excepción general que puede lanzar el servlet cuando
	 *             encuentra algún problema.
	 * @throws IOException:
	 *             Excepción producida por un error de entrada/salida.
	 * @throws SQLException:
	 *             Excepción que proporciona información de algún error con el
	 *             acceso a la base de datos.
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		// PASO 01: Recoger informacion
		String title = request.getParameter("title");
		String director = request.getParameter("director");

		// PASO 02: Recopilar la respuesta
		TypeGenre genre = TypeGenre.ALL_GENRE;
		for (TypeGenre a : TypeGenre.values()) {
			if (a.toString().equals(request.getParameter("genre"))) {
				genre = a;
			}
		}
		
		int year=0;
		
		if(request.getParameter("year") != "" && request.getParameter("year") !=null){
			year = Integer.parseInt(request.getParameter("year")) ;
		}else{
			year = 0;
		}
        

		List<Film> result = filmService.showListFilm(title, director, genre, year);
       
        
        request.setAttribute("listFilm", result);
        
        //PASO 03: Salir      
        RequestDispatcher view = request.getRequestDispatcher("ListFilm.jsp");
        view.forward(request, response);
        
	}

	/**
	 * Maneja el método HTTP <code>GET</code>.
	 * 
	 * @param request:
	 *            Petición del usuario.
	 * @param response:
	 *            Respuesta.
	 * @throws ServletException:
	 *             Excepción general que puede lanzar el servlet cuando
	 *             encuentra algún problema.
	 * @throws IOException:
	 *             Excepción producida por un error de entrada/salida.
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Maneja el método HTTP <code>GET</code>.
	 * 
	 * @param request:
	 *            Petición del usuario.
	 * @param response:
	 *            Respuesta.
	 * @throws ServletException:
	 *             Excepción general que puede lanzar el servlet cuando
	 *             encuentra algún problema.
	 * @throws IOException:
	 *             Excepción producida por un error de entrada/salida.
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Devuelve una pequeña descripción del servlet.
	 * 
	 * @return String con la información del servlet.
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}
}
