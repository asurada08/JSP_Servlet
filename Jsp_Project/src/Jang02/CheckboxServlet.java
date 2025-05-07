package Jang02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CheckboxServlet")
public class CheckboxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = res.getWriter();
		out.println("<html><body>");
		String items[] = req.getParameterValues("item");
		if(items == null) {
			out.print("선택한 항목이 없습니다");
		} else {
			out.println("선택한 항목 입니다<hr>");
			for(String item : items) {
				out.print(item + " ");
			}
		}
		out.println("<br><a href = 'javascript:history.go(-1)'>다시</a></body></html>");
		out.close();		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, res);
	}

}
