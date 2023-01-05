package url;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/urltest")
//어떤 url이든 여기를 거쳐서! 첫번째
//홈페이지 시작화면 .요청 url
//url분석 (controller) 교통정리
//dao , dto 리턴/ 컬렉션리턴 (model) 데이터
//보여줄화면 (view)
public class URLTESTServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// WEB-INF로 파일 숨기기
		// split
		//
		
		// http://ip:port/servlettest/board -> boardwriting
		// http://ip:port/servlettest/member -> forward4
		// http://ip:port/servlettest/product -> 없습니다
		System.out.println(request.getRequestURI());
		// /servlettest/*
		
		/*
		 * url - Uniform Resource Location 주소
		 * uri - Uniform Resource Identifier 서버부 경로
		 * /servlettest/product
		 * */
		
		
		String uri = request.getRequestURI();
		String uri_arr[] = uri.split("/");
		String forward_uri = uri_arr[uri_arr.length-1];
		System.out.println(forward_uri);
		if(forward_uri.equals("board")) {
			forward_uri ="boardwriting"; // sessionid 등 세션정보값 필요
			RequestDispatcher rd = request.getRequestDispatcher(forward_uri);
			rd.forward(request, response);
		}else if(forward_uri.equals("member")) {
			forward_uri = "forward4"; //memlist null
			RequestDispatcher rd = request.getRequestDispatcher(forward_uri);
			rd.forward(request, response);
			// menu = memberlist&page=?
		}else {
			// /servlettest/product
			// product
			// 이동 url이 없습니다.
			System.out.println("이동 url이 없습니다.");
		}
	}
}
