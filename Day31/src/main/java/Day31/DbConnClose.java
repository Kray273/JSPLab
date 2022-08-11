package Day31;

import java.sql.*;
public class DbConnClose {

	public static Connection getConnection() {
	//JSP로 DB연결 방법 3/4_Clsss이용
	// 1.sql package import
	// 2.jdbc driver loding
	//				위치 src-main-webapp-WEB-INF-lib
	//		 		mysql-connector-java-8.0.26.jar
	//	구문으로 드라이버 불러오기
		String driverClass = "com.mysql.jdbc.Driver";
		try {
			Class.forName(driverClass);
		} catch(ClassNotFoundException e) {
			System.out.println("JDBC Driver Err");
		}
	// 3.Connection Object
		Connection conn = null;

		String url = "jdbc:mysql://localhost:3306/exam";
		String id = "root";
		String pw = "0000";
		
		try {
			conn = DriverManager.getConnection(url, id, pw);	
		} catch(SQLException e){
			System.out.println("DB Connection Err.");
		}
		
		return conn;
	}
}
