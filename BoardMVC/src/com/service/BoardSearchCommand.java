package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BoardDAO;
import com.entity.BoardDTO;

public class BoardSearchCommand implements BoardCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchName = request.getParameter("searchName");
		String searchValue = request.getParameter("searchValue");
		
		BoardDAO dao = new BoardDAO();
		//글 검색하기
		ArrayList<BoardDTO> list = dao.search(searchName, searchValue);
		request.setAttribute("list", list);
	}
}
