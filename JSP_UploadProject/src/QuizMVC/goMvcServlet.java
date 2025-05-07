package QuizMVC;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QuizMVC/Go")
public class goMvcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String contry = request.getParameter("contry");
		String name = request.getParameter("name");
		String result = null;
		
		if(contry == "") {
			result = name + "무국적자 어서오세요~";
		} else if (contry.equals("korea")) {
			result = name + "은 한국인 입니다~";
		} else if (contry.equals("usa")) {
			result = name + "은 미국인 입니다~";
		} else if (contry.equals("japan")) {
			result = name + "은 일본인 입니다~";
		} else {
			result = name + "한국인, 미국인, 일본인은 아니지만 어서오세요";
		}
		request.setAttribute("result", result);
		RequestDispatcher dispatcher = request.getRequestDispatcher("gomvc.jsp");
		dispatcher.forward(request, response);
	}

}
