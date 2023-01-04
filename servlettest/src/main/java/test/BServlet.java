package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*	html태그
 *	< img src="/b.jpg">   서버의 루트에 b.jsp
 *	http:// localhost:8081/b.jsp
 *	경로
 *
 *  서블릿,jsp
 *  @Webservice("/b") 
 *  프로젝트명도가져옴 + 별칭사용
 *  http://localhost:8081/servlettest/b
 *  실제 클래스이름은 BServlet인데 
 *  
 *   
 * */ 
@WebServlet("/b")
public class BServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("두번째 만드는 서블릿");
		
	}


}
