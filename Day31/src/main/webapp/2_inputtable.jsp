<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ include file = "2_include.jsp" %>
    
<%

	String pro = "001";
	String pname = "ph.K";
	String pdepar = "economy";
	String pmobile = "0001234567";
	
//include로 인한 중복제거
	String sql = "INSERT INTO prof VALUES(?,?,?,?)";
			
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, pro);
		pstmt.setString(2, pname);
		pstmt.setString(3, pdepar);
		pstmt.setString(4, pmobile);
			
	
// 5~7 과정
	pstmt.executeUpdate();
	// 미 실시 (sql 실행 결과 수신)
	pstmt.close();
	conn.close();		
			
%>