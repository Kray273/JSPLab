package Test1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberDTO;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글입력 가능성이 있다면!
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<h1>원하는 내용을 복사해서 주소창에 넣으세요.</h1>");
		out.print("<h3><a href='http://localhost:8081/jsptest/member?menu=memberlist&page=1'> 리스트 보기</a></h3>");
		out.print("<h3><a href='http://localhost:8081/jsptest/member?menu=insertform'> 회원가입</a></h3>");
		out.print("<h3><a href='http://localhost:8081/jsptest/member?menu=member&id=test&pw=pass'> 회원정보보기</a></h3>");
		
		String menu = request.getParameter("menu");
		MemberDAO dao = new MemberDAO();
		String jspName = null;
				
		if( menu == null) {
			menu = "insertform";
		} else if(menu.equals("memberlist")) {
			int page = Integer.parseInt(request.getParameter("page"));
			ArrayList<MemberDTO> memberlist = dao.getMemberList(page, 3);
			request.setAttribute("memberlist", memberlist);
			jspName = "Test1/memberlist.jsp";
			// <jap:useBean id="memberlist" class="java.util.ArrayList" scope="request" />
		} else if(menu.equals("member")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			MemberDTO dto = dao.getMember(id, pw);
			request.setAttribute("dto", dto);
			jspName = "Test1/member.jsp";
		} else if(menu.equals("insertform")) {
			jspName = "Test1/insert_DB.html";
		} else if(menu.equals("insertprocess")) {
			request.setAttribute("dao", dao);
			//<jsp:useBean id="dao" class"..." scope=request/>
			jspName = "Test1/insertResult.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(jspName);
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
