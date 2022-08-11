<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<% 
//JSP로 DB연결 방법 1/4 직접연결
// 1.sql package import
// 2.jdbc driver loding
	String driverClass = "com.mysql.jdbc.Driver";
	Class.forName(driverClass);
	
// 3.Connection Object
	Connection conn = null;

	String url = "jdbc:mysql://localhost:3306/exam";
	String id = "root";
	String pw = "0000";
	
	conn = DriverManager.getConnection(url, id, pw);
	
// 4.Statement Object
	PreparedStatement pstmt = null;

	String sql = "CREATE table exam("
			+ "hakbun	varchar(50),"
			+ "name		varchar(50),"
			+ "year 	varchar(50),"
			+ "dept		varchar(10),"
			+ "addr		varchar(50),"
			+ "primary key(hakbun))";
	pstmt = conn.prepareStatement(sql);
	
// 5.SQL Execute
	pstmt.executeUpdate();

// 6. ResultSet Object
	// 미 실시 (sql 실행 결과 수신)
	
// 7. Connection Close
	pstmt.close();
	conn.close();
%>



