<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
</head>
<body>

<%
	String no = request.getParameter("no");
	DTOcustomer member = DAOcustomer.getDetail(no);
	
	
%>
	<%=member.getNo()%>
	<%=member.getId()%>
	<%=member.getName()%>
	<%=member.getPass()%>
	<%=member.getCdate()%>
	
<br>

</body>
</html>