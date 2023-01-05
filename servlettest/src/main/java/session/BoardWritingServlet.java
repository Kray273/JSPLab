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

@WebServlet("/boardwriting")
public class BoardWritingServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// loginsession에서 만들어진 새션을 공유
		HttpSession session = request.getSession();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(session.getAttribute("sessionid") != null) {
			out.println("<h1>"+ session.getAttribute("sessionid") +"님의 글쓰기페이지입니다.</h1>");
			String output = "<h1>글쓰기폼</h1>";
			output += "<table board='3'>";
			output += "<tr><td>제목</td><td><input type= text name=title></td></tr>";
			output += "<tr><td>내용</td><td><textarea name=contents rows=5 cols=5>"
					+ "</textarea></td></tr>";
			output += "<tr><td>작성자</td><td><input type= text name=writer value="
					+ session.getAttribute("sessionid") + " readonly></td></tr>";
			output += "</table>";		
			out.println(output);
			out.println("<h3><a href='loginsession'>로그인 페이지로 가기</a></h3>");			
		}else {
			out.println("<h1>로그인이 필요합니다.</h1>");						
		}
	}
}
