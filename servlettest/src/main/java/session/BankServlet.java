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

@WebServlet("/bank")
public class BankServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		HttpSession session = request.getSession();
		String sessionid = (String) session.getAttribute("sessionid");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(sessionid != null) {
			//memberDAO정보 가져오기
			out.println("<h1>"+ sessionid +"님의 인증되셨습니다(5분간 유효합니다.)</h1>");
			//session.invalidate(); // 세션바로없애기
			session.setMaxInactiveInterval(60*5);
			out.println("<h3><a href='loginsession'>로그인 페이지로 가기</a></h3>");
		}else {
			out.println("<h1><a href='loginsession?id=test&pw=1111'>로그인</a>을 해주세요. 회원정보를 표시할수없습니다.");
		}
		
	}
}