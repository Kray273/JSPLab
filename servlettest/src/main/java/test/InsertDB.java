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

@WebServlet("/insertdb")
public class InsertDB extends HttpServlet {

	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글입력 가능성이 있다면!
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//1. 요청 정보 추출(id, pw)
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
	
		if(id == null || id == "") {
			response.sendRedirect("insert_DB.html");
		}
		
		//2. 회원가입 처리 - jdbc
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setPhone(phone);
		dto.setEmail(email);
		dto.setAddress(address);
		MemberDAO dao = new MemberDAO();
		int success = dao.insertMember(dto);
		
		//3. 정상 회원가입처리
		String result = "";
		if(success == 1) {
			result ="<h3>" + id + "회원님 정상 회원가입되셨습니다.</h3>"
					+ "<a href='?'>무엇인가? 하러가기</a></h3>";
		} else {
			result ="<h3>" + id + "회원으로는 회원가입이 되지 않습니다."
					+ "<a href='insert_DB.html'>다시 회원가입 하러가기</a></h3>";
		} 
		out.println(result);
	}

}
