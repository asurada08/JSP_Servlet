package Jang02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/hello")
public class Hello_Servlet extends HttpServlet {
	//클래스를 구분하기 위한 값으로 사람에게 주민등록번호와 같은 역할
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//클라이언트에게 응답할 페이지 정보를 세팅한다
		response.setContentType("text/html;charset=utf-8");
		//[Ctrl+Shift+O] : 자동 import
		//출력스트림 얻기
		PrintWriter out = response.getWriter();
		out.print("<html><body><h3>Hello Servlet</h3></body></html>");
		out.close();//자원반환
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
