package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import DTO.MemberDTO;

@WebServlet("/logindb")
public class LoginDB extends HttpServlet {

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		// Post -> get 이 일반적! 
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글입력 가능성이 있다면!
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//1. 요청 정보 추출(id, pw)
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if(id == null || pw == null) {
			out.print("");
		}
		
		//2. 로그인 처리 - jdbc
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.getMember(id, pw);
		
		//3. 정상로그인 / 암호 다시 입력 / 회웜가입대상 응답
			// dto id,pw 저장상태
			// dto id저장, pw null
			// dto null
		String result = "";
		if(dto != null && dto.getPw() != null) {
			result ="<h3>" + id + "회원님 정상 로그인 되셨습니다.</h3>";
		} else if (dto != null && dto.getPw() == null) {
			result ="<h3>" + id + "회원님으로 인증되지 않았습니다."
					+ "<a href='login_DB.html'>다시 로그인 하러가기</a></h3>";
		} else if(dto == null) {
			result ="<h3>" + id + "님 회원가입이 필요합니다."
					+ "<a href='insert_DB.html'>회원가입 하러가기</a></h3>";
		}
		out.println(result);
	}

}
