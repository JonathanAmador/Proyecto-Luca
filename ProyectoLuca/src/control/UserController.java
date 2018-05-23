package control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import services.IUserService;
import services.UserService;

/**
 * Servlet implementation class UserController
 */

@WebServlet(name = "FilmListSelect", urlPatterns = { "/UserController.do" }, asyncSupported = false)
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String operacion;
		try {
			operacion = request.getParameter("operacion");
			IUserService op = new UserService();
			if (operacion.equals("registrar")) {
				boolean result = op.addUser(recogerDatos(request));
				System.out.println(result);// hacer algo cuando sea true o false
			} else if (operacion.equals("fichaUsuario")) {
				showUser(request,response,op);
			} else if (operacion.equals("login")) {
				login(request,response, op);
				
			}
		} catch (Exception e) {

		}
	}
	
	
	private void showUser(HttpServletRequest request, HttpServletResponse response, IUserService op) throws SQLException, ServletException, IOException {
		int id = 0;
		if (request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
		} else {
			System.out.println("Error dato vacio");
		}
		request.setAttribute("usuario", op.showUser(id));
		RequestDispatcher view = request.getRequestDispatcher("resultUser.jsp");
		view.forward(request, response);	
	}

	private void login(HttpServletRequest request, HttpServletResponse response, IUserService op) throws SQLException, ServletException, IOException{
		String mail = request.getParameter("mail");
		String pass = request.getParameter("password");
		User cliente = new User();
		cliente.setEmail(mail);
		cliente.setPass(pass);
		cliente = op.checkUser(mail, pass);
		if(cliente != null){
			HttpSession sesion = request.getSession();
			sesion.setAttribute("cliente", cliente);
		}
		
		RequestDispatcher view = request.getRequestDispatcher("index.jsp");
        view.forward(request, response);
	}

	private User recogerDatos(HttpServletRequest request) {
		User user = new User();
		user.setName(request.getParameter("name"));
		user.setSurname(request.getParameter("surname"));
		user.setEmail(request.getParameter("mail"));
		user.setPass(request.getParameter("password"));
		user.setAddress(request.getParameter("address"));
		int phone = 0;
		if (request.getParameter("phone") != "") {
			phone = Integer.parseInt(request.getParameter("phone"));
		} else {
			phone = 0;
		}
		user.setPhone(phone);

		return user;
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
			// TODO Auto-generated catch block
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
