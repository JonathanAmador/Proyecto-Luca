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

@WebServlet(
		name = "FilmListSelect", urlPatterns = { "/FilmListSelect.do" }, asyncSupported = false
)
public class FilmListSelect extends HttpServlet{

	
		private static final long serialVersionUID = 1L;
		private IFilmService filmService = new FilmService();

	    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException, SQLException {
	    	
	    	//PASO 01: Recoger informacion
	        String title = request.getParameter("title");
	        String director = request.getParameter("director");
	        TypeGenre genre = TypeGenre.ACTION;
			for (TypeGenre a : TypeGenre.values()) {
				if (a.toString() ==  request.getParameter("genre")) {
					genre = a;
				}
			}   
			
			int year=0;
			/*
			if(request.getParameter("year") != ""){
				year = Integer.parseInt(request.getParameter("year")) ;
			}else{
				year = 0;
			}*/
	        
	        
	       
	        List<Film> result = filmService.showListFilm(title, director, genre, year);
	        
	        request.setAttribute("listFilm", result);
	        
	        //PASO 03: Salir      
	        RequestDispatcher view = request.getRequestDispatcher("ListFilm.jsp");
	        view.forward(request, response);
	        //request.getRequestDispatcher("result.jsp").forward(request, response);
	        
	    }

	    
	    /** 
	     * Handles the HTTP <code>GET</code> method.
	     * @param request servlet request
	     * @param response servlet response
	     * @throws ServletException if a servlet-specific error occurs
	     * @throws IOException if an I/O error occurs
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
	     * Handles the HTTP <code>POST</code> method.
	     * @param request servlet request
	     * @param response servlet response
	     * @throws ServletException if a servlet-specific error occurs
	     * @throws IOException if an I/O error occurs
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
	     * Returns a short description of the servlet.
	     * @return a String containing servlet description
	     */
	    @Override
	    public String getServletInfo() {
	        return "Short description";
	    }// </editor-fold>
	}
