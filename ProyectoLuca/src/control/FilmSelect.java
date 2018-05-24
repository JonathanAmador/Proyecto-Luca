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
import services.FilmService;
import services.IFilmService;

/**
 * Implementación del servlet FilmSelect.
 */
@WebServlet(name = "FilmSelect", urlPatterns = { "/FilmSelect.do" }, asyncSupported = false)
public class FilmSelect extends HttpServlet {
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

		// PASO 01: Recoger informacion.
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
		RequestDispatcher view = request.getRequestDispatcher("resultFilm.jsp");
		view.forward(request, response);
		// request.getRequestDispatcher("result.jsp").forward(request,
		// response);

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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
