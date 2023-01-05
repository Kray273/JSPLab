package session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginsession") //http://ip:port/servlettest/loginsession
//@WebServlet("/login/*") //http://ip:port/servlettest/login* 뒤에 아무거나 와도 실행
public class LoginSessionServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		//요청 보낸 브라우저 세션 소유 여부
		// true이면(두번째 이후 요청) 이전 생선 session 대체하고,
		// false(최초요청)이면 session생성
		HttpSession session = request.getSession();
		
		session.setAttribute("sessionid", id);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(id != null && pw != null) {
			out.println("<h1>"+ id +"님로그인하셨습니다.</h1>");			
			out.println("<h2>사용가능한 메뉴는 다음과 같습니다.</h2>");			
			out.println("<h3><a href='bank'>은행업무보기</a></h3>");			
			out.println("<h3><a href='mypage'>내 정보 보러가기</a></h3>");			
			out.println("<h3><a href='boardwriting'>글쓰러 가기</a></h3>");			
			out.println("<h3><a href='logout'>로그아웃 하러 가기</a></h3>");			
			out.println("<h4>로그인정보 유효 시간은 "+session.getMaxInactiveInterval() +"초입니다.</h4>");			
		} else {
			out.println("<h1>로그인 기록이 존재하지 않습니다.</h1>");
			out.println("<h3><a href='loginsession?id=test&pw=111'>로그인하기</a></h3>");	
		}
	
	}
}
