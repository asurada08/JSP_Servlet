package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BoardDAO;
import com.entity.BoardDTO;

public class BoardListCommand implements BoardCommand{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardDTO> list = dao.list();
		System.out.println(list.toString());
	}
}
