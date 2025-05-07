package Jang02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String job = req.getParameter("job");
		String interests[] = req.getParameterValues("interest");
		
		res.setContentType("text/html;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.println("<html><body>당신이 선택한 직업 : <b>" + job + "</b><hr>");
		out.println("당신이 선택한 관심분야 : <b>");
		if(interests == null) {
			out.print("선택항목 없음");
		} else {
			for(String interest : interests) {
				out.print(interest + " ");
			}
		}
		out.println("</b><br><a href='javascript:history.go(-1)'>다시</a></body></html>");
		out.close();
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, res);
	}

}
