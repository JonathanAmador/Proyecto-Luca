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
import model.User;
import services.FilmService;
import services.IFilmService;
import services.IUserService;
import services.UserService;

/**
 * Servlet implementation class FilmUpdate
 */
@WebServlet(name = "FilmUpdate", urlPatterns = { "/FilmUpdate.do" }, asyncSupported = false)
public class FilmUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IFilmService filmService = new FilmService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FilmUpdate() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		try {
			String operacion;
			operacion = request.getParameter("operacion");
			System.out.println(operacion);
			IFilmService op = new FilmService();
			if (operacion.equals("addFilm")) {
				// AGREGAR
				System.out.println("Agregando nueva pelicula");
				boolean result = op.addFilm(recogerDatos(request));
				response.sendRedirect("listado");
			} else if (operacion.equals("details")) {
				// DETALLES
				int id = 0;
				if (request.getParameter("id") != null) {
					id = Integer.parseInt(request.getParameter("id"));
				} else {
					System.out.println("ERRRRRRRRRRRRRRRRRRRRRRORRRRRRRRRRRRRRRRR dato vacio");
				}

				// PASO 02: Recopilar la respuesta.
				Film result = filmService.showFilm(id);

				request.setAttribute("film", result);

				// PASO 03: Salir.
				RequestDispatcher view = request.getRequestDispatcher("resultFilm.jsp"); // crear
																							// otro
																							// jsp
																							// para
																							// mostrarlos
																							// en
																							// tablas
				view.forward(request, response);
				// request.getRequestDispatcher("result.jsp").forward(request,
				// response);

			} else if (operacion.equals("update")) {
				// ACTUALIZAR
				System.out.println("Actualizando datos de pelicula");
				op.updateFilm(recogerDatos(request));
				response.sendRedirect("FilmUpdate.do?operacion=listado");
			} else if (operacion.equals("modificacion")) {
				// MODIFICACION
				int id = 0;
				if (request.getParameter("id") != null) {
					id = Integer.parseInt(request.getParameter("id"));
				} else {
					System.out.println("Error dato vacio");
				}
				System.out.println("id:" + id);
				request.setAttribute("film", op.showFilm(id));
				RequestDispatcher view = request.getRequestDispatcher("/update.jsp");
				view.forward(request, response);
			} else if (operacion.equals("delete")) {
				int id = 0;
				if (request.getParameter("id") != null) {
					id = Integer.parseInt(request.getParameter("id"));
				} else {
					System.out.println("Error dato vacio");
				}
				System.out.println("Borrando datos de pelicula");
				op.deleteFilm(id);
				response.sendRedirect("FilmUpdate.do?operacion=listado");
			} else if (operacion.equals("listado")) {
				// LISTADO
				request.setAttribute("listFilm", op.showAllFilm());
				RequestDispatcher view = request.getRequestDispatcher("listado.jsp");
				view.forward(request, response);
			}

		} catch (Exception e) {
			throw e;
		}

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Film recogerDatos(HttpServletRequest request) {
     	
	    	Film film = new Film();
	    	int id=0;
    		if (request.getParameter("idFilm") != "" ) {
    			
    			id = Integer.parseInt(request.getParameter("idFilm"));
    			
    		} 
	    	    film.setIdFilm(id);
	    		film.setTitle(request.getParameter("title"));
	    		film.setDirector(request.getParameter("director"));
	    		film.setSynopsis(request.getParameter("synopsis"));
	    		
	    		float price=0;
	    		int year=0;
	    		if (request.getParameter("price, year") != "" ) {
	    			price = Float.parseFloat(request.getParameter("price"));
	    			year = Integer.parseInt(request.getParameter("year"));
	    			
	    		} else {
	    			price = 0;
	    			year=0;
	    		}
	    		
	    		TypeGenre genre = TypeGenre.ALL_GENRE;
	    		for (TypeGenre a : TypeGenre.values()) {
	    			if (a.toString().equals(request.getParameter("genre"))) {
	    				genre = a;

	    			}
	    		}
	    		
	    		film.setPrice(price);
	    		film.setYear(year);
	    		film.setGenre(genre);
	    		film.setImage(request.getParameter("image"));
	    		film.setDuration(request.getParameter("duration"));
	    		
	    		
	   
	    		return film;
	    	}
}
