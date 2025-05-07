package com.saeyan.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//만능 리모콘의 역할(행동을 하나로 만들기) action == command
public interface Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	//execute를 모든 action에 상속		
}
