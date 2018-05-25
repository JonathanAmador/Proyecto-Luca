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
import model.User;
import services.FilmService;
import services.IFilmService;
import services.IUserService;
import services.UserService;

/**
 * Servlet implementation class FilmUpdate
 */
@WebServlet(name = "FilmListSelect", urlPatterns = { "/FilmListSelect.do" }, asyncSupported = false)
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
    try{
    	String operacion;
    	operacion= request.getParameter("operacion");
    	System.out.println(operacion);
    	IFilmService op=new FilmService();
    	if(operacion.equals("addFilm")){
    		System.out.println("Agregando nueva pelicula");
    		boolean result = op.addFilm(recogerDatos(request));
    		String respuesta= "addFilm.jsp";
    	}else if(operacion.equals("updateFilm")){
    		System.out.println("Actualizando datos de pelicula");
    		op.updateFilm(recogerDatos(request));
    		String result="updateFilm.jsp";
    	}else if (operacion.equals("deleteFilm")){
    		System.out.println("Borrando datos de pelicula");
    		op.deleteFilm(recogerDatos(request));
    		String result="deleteFilm.jsp";    	
    	}
        
    }catch (Exception e){
    	throw e;
    }
    
    
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	
	 public Film recogerDatos(HttpServletRequest request1) {
     	
	    	Film film = new Film();
	    		film.setTitle(request1.getParameter("title"));
	    		film.setDirector(request1.getParameter("director"));
	    		film.setSynopsis(request1.getParameter("synopsis"));
	    		
	    		int price
	    		if (request.getParameter("price") != "") {
	    			phone = Integer.parseInt(request.getParameter("phone"));
	    		} else {
	    			phone = 0;
	    		}
	    		
	    		film.setPrice(request1.getParameter("price"));
	    		film.setYear(request1.getParameter("year"));
	    		film.setGenre(request1.getParameter("genre"));
	    		film.setImage(request1.getParameter("imagen"));
	    		film.setDuration(request1.getParameter("duration"));
	    		
	    		
	   
	    		return film;
	    	}
}
