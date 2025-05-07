package com.movie.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.movie.dao.MovieDAO;
import com.movie.dto.MovieVO;

@WebServlet("/movieDelete.do")
public class movieDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		
		MovieDAO mDao = MovieDAO.getInstance();
		MovieVO mVo = mDao.selectMovieByCode(code);
		
		request.setAttribute("movie", mVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("movie/movieDelete.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		
		MovieDAO mDao = MovieDAO.getInstance();
		mDao.deleteMovie(code);
		
		response.sendRedirect("movieList.do");
	}

}
