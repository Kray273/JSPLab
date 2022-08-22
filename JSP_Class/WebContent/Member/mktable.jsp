<%@page import="member.DBmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


<%
	Connection conn = null;
	conn = DBmember.getConnection();
	PreparedStatement pstmt = null;

	String sql = "CREATE TABLE member("
			+ "mno int(50) not null AUTO_INCREMENT,"
			+ "mname varchar(50),"
			+ "mtel varchar(50),"
			+ "mlevel int(50) null DEFAULT '5',"
			+ "mdate TIMESTAMP null DEFAULT current_timestamp(),"
			+ "PRIMARY KEY (mno))";
	
	pstmt = conn.prepareStatement(sql);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
 %>