package Jang02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>당신이 입력한 정보입니다<br>");
		out.println("아이디 : " + id);
		out.println("<br>비밀번호 : " + pwd);
		
		out.println("<br><a href = 'javascript:history.go(-1)'>다시</a>");
		out.println("</body></html>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		response.setContentType("text/html; charset=utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>당신이 입력한 정보입니다<br>");
		out.println("아이디 : " + id);
		out.println("<br>비밀번호 : " + pwd);
		
		out.println("<br><a href = 'javascript:history.go(-1)'>다시</a>");
		out.println("</body></html>");
		out.close();
	}

}
