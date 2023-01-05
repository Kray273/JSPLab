package test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import DAO.ConnectionInform;


@WebServlet("/ConnectionServlet")
public class ConnectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// ConnectionPool 이용하지 않음
//			Class.forName(ConnectionInform.DRIVER_CLASS);
//			long start = System.currentTimeMillis();
//			for(int i = 1; i<=10000; i++ ) {
//				//1.db 연결
//				Connection con = DriverManager.getConnection
//						(ConnectionInform.JDBC_URL, ConnectionInform.USERNAME, ConnectionInform.PASSWORD);
//				// sql
//				System.out.println(i + " 번째 maria DB 연결 성공");
//				// 메모리 con "즉각" 삭제 아닌 표시
//				con.close(); 
//				
//			}
//			long end = System.currentTimeMillis();
//			System.out.println((end-start) + " (1/1000초) 소요"); //5544 (1/1000초) 소요
//			//2번째 실행시 6411번째에서 에러 발생.  
			
			// ConnectionPool 이용
			Context initContext = new InitialContext(); // context.xml 준비
			DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/mydb"); //자바 연관 설정
			
			long start = System.currentTimeMillis();
			for(int i = 1; i<=10000; i++ ) {
				//1.db 연결
				Connection con = ds.getConnection(); // 톰캣한테  커넥션 pool 빌려온다	
				// sql
				System.out.println(i + " 번째 maria DB 연결 성공(Datasource)");
				con.close(); // 빌려온 con을 반납
				
			}
			long end = System.currentTimeMillis();
			System.out.println((end-start) + " (1/1000초) 소요"); //435 (1/1000초) 소요
			//2번째 실행시 246 (1/1000초) 소요.  
			//3번째 실행시 222 (1/1000초) 소요 
			//4번째 실행시 209 (1/1000초) 소요 
			//10번째 실행시 222 (1/1000초) 소요
			
		} catch (Exception e) {e.printStackTrace();}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
