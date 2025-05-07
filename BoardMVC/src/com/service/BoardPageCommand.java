package com.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BoardDAO;
import com.entity.PageTO;

public class BoardPageCommand implements BoardCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int curPage = 1;//현재 페이지
		if (request.getParameter("curPage") != null) {
			curPage = Integer.parseInt(request.getParameter("curPage"));
		}
		BoardDAO dao = new BoardDAO();
		PageTO list = dao.page(curPage);
		
		System.out.println("여기는 BoardPageCommand..." + curPage + "\n" + list.getList());
		
		request.setAttribute("list", list.getList());
		request.setAttribute("page", list);
	}
}
