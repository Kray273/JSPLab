<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//SQL package import 
%>   
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL package import</title>
</head>
<body>

<%
	// JDBC 드라이버 로딩
	String diverClass = "com.mysql.jdbc.Driver";

	try{
		Class.forName(diverClass);
		out.print(" JDBC Driver loding 성공!!<br>");
	} catch(ClassNotFoundException e){
		out.print("JDBC Driver loding 실패!!<br>");
	}
	
	//MySQL 데이터베이스 서버 연결
	String url = "jdbc:mysql://localhost:3306/";
	String id = "root";
	String pw = "0000";
	
	// connection object 생성
	Connection conn = null;
	
	//connection MySQL 서버연결
	try{
		conn = DriverManager.getConnection(url, id, pw);
		out.print("MySQL 서버 연결 성공!!<br>");
	} catch(SQLException e){
		out.print("MySQL 서버 연결 실패!!<br>");
	} 
	
	//SQL 구문 객체 작성
	String sql ="CREATE DATABASE test";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	
	
	
%>
</body>
</html>