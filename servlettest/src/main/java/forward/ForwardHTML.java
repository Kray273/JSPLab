package forward;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import DTO.MemberDTO;

@WebServlet("/ForwardHTML")
public class ForwardHTML extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Forward시에 서버 내부 같은 어플리케이션 내부 파일 이동
		System.out.println("클라이언트는 " + request.getRequestURI() + "호출하셨습니다.");
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/login.html");
		rd.forward(request, response);
		//rd.include(request, response);//응답 추가 출력 가능! 
	}
}
