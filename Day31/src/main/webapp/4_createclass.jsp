<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Day31.*" %>

<% 
// Class 호출로 중복 제거
	
//class 호출
	Connection conn = null;
	conn = DbConnClose.getConnection();

// 4.Statement Object	
	PreparedStatement pstmt = null;

	String sql = "CREATE TABLe visit("
			+ "memo	varchar(50))";

	pstmt = conn.prepareStatement(sql);
	
// 5.SQL Execute 넘어오는게 있으면 Query
	pstmt.executeUpdate();

// 6. ResultSet Object
	//리턴값이 없으므로 null;

//7. Connection Close_역순으로!	
	pstmt.close();
	conn.close();
%>