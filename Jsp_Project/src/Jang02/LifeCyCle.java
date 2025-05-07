package Jang02;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LifeCyCle")//url
public class LifeCyCle extends HttpServlet {
	private static final long serialVersionUID = 1L;
		//멤버변수
		int initCount = 1;
		int dogetcount = 1;
		int destroyCount = 1;
		
		//객체 생성되면서 1번 수행
		@Override
		public void init(ServletConfig config) throws ServletException {
			System.out.println("init 메소드는 첫 요청만 호출됨 : " + initCount++);
		}
		
		@Override
		public void destroy() {
			System.out.println("destroy 메소드는 톰캣이 종료될 때만 호출됨 : " + destroyCount++ );
		}
	//요청할때마다 1씩 증가(새로고침)
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 메소드가 요청될 때마다 호출됨 : " + dogetcount++);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
