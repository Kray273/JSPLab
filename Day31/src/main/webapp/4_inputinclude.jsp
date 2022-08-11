<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ include file = "2_include.jsp" %>
    
<%

	//String memo = "안녕하세요..원빈입니다";
	//String memo = "반갑습니다..정국입니다";
	//String memo = "하이요..상혁입니다";
	
	String memo = request.getParameter("item");
	
//include로 인한 중복제거
	String sql = "INSERT INTO visit VALUES(?)";
			
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memo);
	
// 5~7 과정
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();		
			
%>