<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First JSP</title>
</head>
<body>
<h1>JSP HI!</h1>
<% String id = request.getParameter("id"); 
	Date now = new Date();
%>
<h5><%=id%> 회원님 환영합니다.</h5>
<h5><%= now%>시간에 로그인 하셨습니다.</h5>
</body>
</html>