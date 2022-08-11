<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
    
<%

	String hakbun = "202412345";
	String name = "JON";
	String year = "1";
	String dept = "economy";
	String addr = "Seoul seocho";

// 1~3 과정
	String driverClass = "com.mysql.jdbc.Driver";
	Class.forName(driverClass);
	
	Connection conn = null;

	String url = "jdbc:mysql://localhost:3306/exam";
	String id = "root";
	String pw = "0000";
	
	conn = DriverManager.getConnection(url, id, pw);
	
// 4.Statement Object
	PreparedStatement pstmt = null;

	String sql = "INSERT INTO exam VALUES(?,?,?,?,?)";
			
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, hakbun);
		pstmt.setString(2, name);
		pstmt.setString(3, year);
		pstmt.setString(4, dept);
		pstmt.setString(5, addr);
			
// 5~7 과정
	pstmt.executeUpdate();
	// 미 실시 (sql 실행 결과 수신)
	pstmt.close();
	conn.close();		
			
%>