<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
</head>
<body>
<jsp:useBean id="memberlist" class="java.util.ArrayList" scope="request"/>
<% for(Object o : memberlist){
	MemberDTO dto = (MemberDTO)o;
	out.println( "<h3>" + dto.getId() + " : " + dto.getName() + " : "
		+ dto.getAddress() + " : " + dto.getIndate()+"</h3>");
}
	%>
	
<a href="member">MemberServlet으로 가기</a>
</body>
</html>