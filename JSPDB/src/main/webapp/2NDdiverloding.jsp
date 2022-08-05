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

%>
</body>
</html>