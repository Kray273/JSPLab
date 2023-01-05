package forward;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import DTO.MemberDTO;

@WebServlet("/forward3")
public class ForwardTest3 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// forward3?menu=memberlist&page=3
		// forward3?menu=login
		String menu = request.getParameter("menu");
		if(menu.equals("memberlist")) {
			//MemberDAO 객체생성
			MemberDAO dao = new MemberDAO();
			//getMemberList 호출 - 결과 리턴
			ArrayList<MemberDTO> list = 
			dao.getMemberList(Integer.parseInt(request.getParameter("page")), 4);
			//forward4 속성 전달
			request.setAttribute("memberlist", list);
			RequestDispatcher dis = request.getRequestDispatcher("/forward4");
			//forward4 이동
			dis.forward(request, response);
		}
	}
}
