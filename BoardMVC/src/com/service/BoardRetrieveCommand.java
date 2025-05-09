package com.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BoardDAO;
import com.entity.BoardDTO;

public class BoardRetrieveCommand implements BoardCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		BoardDAO dao = new BoardDAO();
		BoardDTO data = dao.retrieve(num);
		
		request.setAttribute("retrieve", data);
	}
}
