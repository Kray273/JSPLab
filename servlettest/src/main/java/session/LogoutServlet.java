package session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.ssi.SSICommand;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// loginsession에서 만들어진 새션을 공유
		HttpSession session = request.getSession();
		
		String sessionId = (String)session.getAttribute("sessionid");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(session.getAttribute("sessionid") != null) {
			out.println("<h1>"+ sessionId +"님 로그아웃 했습니다.</h1>");
			session.removeAttribute("sessionid");
			out.println("<h3><a href='loginsession'>로그인 다시 하기</a></h3>");			
		}else {
			out.println("<h1>로그아웃을 먼저 할 수 없습니다.</h1>");						
			out.println("<h3><a href='loginsession?id=test&pw=111'>로그인 페이지로 가기</a></h3>");			
		}
	
	}
}
