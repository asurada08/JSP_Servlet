package Jang02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RadioServlet")
public class RadioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html;charset=utf-8");
		String gender = req.getParameter("gender");
		String chk_mail = req.getParameter("chk_mail");
		String content = req.getParameter("content");
		
		PrintWriter out = res.getWriter();
		out.println("<html><body>당신이 입력한 정보입니다 <hr>");
		out.println("성별 : <b>" + gender + "</b><br>");
		out.println("메일정보 수신여부 : <b>" + chk_mail + "</b><br>");
		out.println("가입인사 : <b><pre>" + content + "</b></pre>");
		out.println("<a href = 'javascript:history.go(-1)'>다시</a></body></html>");
		out.close();		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, res);		
	}

}
