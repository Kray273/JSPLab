package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/request")
//http://localhost:8081/servlettest/request
public class RequestTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println(request.getContextPath());	//servlettest
		System.out.println(request.getMethod());	//GET
		System.out.println(request.getRequestURI());	//servlettest/request
		System.out.println(request.getServletPath());	//request
		System.out.println(request.getRemoteAddr());	//ip v6 0:0:0:0:0:0:0:1
		
		response.setContentType("text/html;charset=utf-8"); // html을 포함한 문서타입 지정
		PrintWriter out = response.getWriter();
		out.println("<h1>hello ouput</h1>");
		out.println("<h1>안녕 클라이언트</h1>");
		out.println("<script src='http://localhost:8081/servlettest/request/jquery-3.6.1.min.js'></script>");
		out.println("<script src='/"+request.getContextPath()+"/jquery-3.6.1.min.js'></script>");
		// /는 localhost이고 contextpath는 변하니까 
				
	}

}
