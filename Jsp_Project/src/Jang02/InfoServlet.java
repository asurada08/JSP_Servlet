package Jang02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InfoServlet")
public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do Get~");
		response.setContentType("text/html; charset = utf-8");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>당신이 입력한 정보입니다<br>");
		out.println("이름 : " + name);
		out.println("<br>주소 : " + addr);
		
		out.println("<br><a href ='javascript:history.go(-1)'>다시</a>");
		out.println("</body></html>");
		out.close();		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do Post~");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = utf-8");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>당신이 입력한 정보입니다<br>");
		out.println("이름 : " + name);
		out.println("<br>주소 : " + addr);
		
		out.println("<br><a href ='javascript:history.go(-1)'>다시</a>");
		out.println("</body></html>");
		out.close();
		
	}

}
