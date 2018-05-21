package control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

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

/**
 * Servlet implementation class FilmSelect
 */
@WebServlet("/FilmSelect")
public class FilmSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IFilmService filmService = new FilmService();
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
    	
    	//PASO 01: Recoger informacion
        int id = Integer.parseInt(request.getParameter("id"));
        id = 2;
        Film result =filmService.showFilm(id);
        
        request.setAttribute("film", result);
        
        //PASO 03: Salir      
        RequestDispatcher view = request.getRequestDispatcher("resultFilm.jsp");
        view.forward(request, response);
        //request.getRequestDispatcher("result.jsp").forward(request, response);
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
