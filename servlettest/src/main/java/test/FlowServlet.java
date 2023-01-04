package test;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/flow")
public class FlowServlet extends HttpServlet {
	// 실행 순서
	// 1. init호출(최초1번)
	// 2. doGet메소드 호출
	// 3. 사라질때destroy()호출
	public void init(ServletConfig config) throws ServletException {
		System.out.println("1. init호출(수정)");
		// 최초의 한번 실행
	}

	public void destroy() {
		System.out.println("3. destroy호출");
		// 서블릿객체가 메모리내부에서 없어질때 
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("2. doGet메소드 호출");
		// 새로고침할때마다 실행됨
	}

}
