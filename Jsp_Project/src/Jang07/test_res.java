package Jang07;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test_res")
public class test_res extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h3>온라인 앙케이트 결과</h3>");
		String gender = request.getParameter("gender");
		out.println("1. 성별 : " + gender + "<br>");
		String level = request.getParameter("level");
		out.println("2. 본사의 제품을 평가한다면? : " + level + "<br>");
		String searchs[] = request.getParameterValues("search");
		if(searchs==null) {
			out.println("3. 가장 자주 사용하는 검색엔진은? : 선택하지 않음.<br>");
		}else {
			for(String search : searchs)
				out.println("3. 가장 자주 사용하는 검색엔진은? : " + search + " "  + "<br>");
		}
		String content = request.getParameter("content");
		out.println("4. 본사에게 하고 싶은 말은? : " + content + "<br>");
		out.println("</body></html>");
		out.close();
	}
}
