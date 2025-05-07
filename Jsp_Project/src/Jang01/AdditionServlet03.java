package Jang01;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Addition03")
public class AdditionServlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//응답문서 타입 지정
		response.setContentType("text/html;charset=utf-8");
		int num1 = 20;
		int num2 = 10;
		int add = num1 + num2;
		//값을 저장 후 페이지 이동할때 값을 갖고 감
		//요청정보 세팅			(저장할 속성명, 속성에 저장할 값)
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("add", add);
		
		RequestDispatcher dis = request.getRequestDispatcher("jang01/Addition03.jsp");
		//Addition03.jsp로 페이지 이동하면서 제어권을 넘김(값 넘어감), 주소변경X
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
