package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.FilmService;
import services.IFilmService;

import java.util.*;

@WebServlet(
        name = "",
        urlPatterns = {""},
        asyncSupported = false
)
public class FilmSelect extends HttpServlet{

	
		private static final long serialVersionUID = 1L;
		private IFilmService filmService = new FilmService();

	    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	
	    	//PASO 01: Recoger informacion
	    	int idFilm = Integer.parseInt(request.getParameter("idFilm"));
	        String title = request.getParameter("title");
	        String director = request.getParameter("director");
	        //categoria
	        int year = Integer.parseInt(request.getParameter("year"));
	        
	       
	        List<Film> result = filmService.showListFilm(titulo, director, genre, year)
	        
	        request.setAttribute("styles", result);
	        
	        //PASO 03: Salir      
	        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
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
	        processRequest(request, response);
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
	        processRequest(request, response);
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
