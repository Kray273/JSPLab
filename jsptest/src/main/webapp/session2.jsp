<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session2</title>
</head>
<body>
<% 
MemberDTO dto = (MemberDTO)session.getAttribute("sessiondto");
%>
전달아이디:<H1><%=dto.getId()%></H1>
암호:<H1><%=dto.getPw()%></H1>
이름:<H1><%=dto.getName()%></H1>


</body>
</html>



