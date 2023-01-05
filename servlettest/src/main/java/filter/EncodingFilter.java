package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;


@WebFilter("/*")
public class EncodingFilter extends HttpFilter implements Filter {

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("Filter 시작");
		//모든 서블릿 실행시마다 서블릿 이름, 요청 클라이언트의 IP정보 출력 - 서블릿 doGet,Post
		String servletname = ((HttpServletRequest)request).getServletPath();
		String clientIp = request.getRemoteAddr(); //0.0.0.0
		System.out.println(clientIp + "컴퓨터가 "+ servletname+"을 호출했습니다.");
		
		// 서블릿 요청 인코딩 변경
		request.setCharacterEncoding("utf-8");
		
		
		//요청 - 요청필터 - 처리 - 응답필터 - 응답
		//요청필터 : chain문장 이전에 실시된 문장들.
		long start = System.currentTimeMillis();
		chain.doFilter(request, response); //다른 필터 실행. 다른 필터 없을 시 서블릿 실행
		//응답필터 : chain문장 이후에 실시된 문장들.
		long end = System.currentTimeMillis();
		System.out.println((end-start)+"(1/1000)초가 수행되었습다.");
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
