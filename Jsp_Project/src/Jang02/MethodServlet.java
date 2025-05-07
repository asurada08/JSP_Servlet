package Jang02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MethodServlet")
public class MethodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청정보를 인코딩 지정, post 방식일때 꼭 문자셋 세팅해야함
		// get 방식일때는 생략가능
		// request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		// 응답할 문서타입 설정
		response.setContentType("text/html; charset=utf-8");
		// 출력 스트림 얻기
		PrintWriter out = response.getWriter();
		out.print("<h3>get 방식으로 처리됨<br> 이름 : " + name + "</h3>");
		// 자원 반환
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청정보를 인코딩 지정, post 방식일때 꼭 문자셋 세팅해야 함
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		// 응답할 문서타입 설정
		response.setContentType("text/html;charset=utf-8");
		// 출력 스트림 얻기
		PrintWriter out = response.getWriter();
		out.print("<h3>post 방식으로 처리됨<br> 이름 : " + name + "</h3>");
		// 자원 반환
		out.close();
	}

}
