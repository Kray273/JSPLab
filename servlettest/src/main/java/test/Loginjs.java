package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginjs")
public class Loginjs extends HttpServlet {

	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		// Post -> get 이 일반적! 
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");  
		String role = request.getParameter("role");  
		if(id == null || id.equals("")) {
			id="손님";
		}
		String output ="";
		if(role.equals("admin")) {
			output = "<h1>"+ id + "관리자님 환영합니다.</h1>";
		}else {
			output = "<h1>"+ id + "회원님 환영합니다.</h1>";			
		}
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(output);
	}

}
