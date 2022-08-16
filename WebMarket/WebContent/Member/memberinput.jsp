<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="member.*" %>

<%
	request.setCharacterEncoding("utf-8");
	String mname = request.getParameter("mname");
	String mtel = request.getParameter("mtel");
	
	Connection conn = null;
	conn = DBmember.getConnection();
	PreparedStatement pstmt = null;


	String sql = "INSERT INTO member(mname, mtel) VALUES(?,?)";
		
	pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mname);
		pstmt.setString(2, mtel);

	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
%>