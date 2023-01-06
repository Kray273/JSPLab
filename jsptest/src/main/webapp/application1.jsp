<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application1</title>
</head>
<body>
<% 
String id = request.getParameter("id"); 
String pw = request.getParameter("pw");
String name = request.getParameter("name");
MemberDTO dto = new MemberDTO();
dto.setId(id);
dto.setPw(pw);
dto.setName(name);
//서블릿은 ServletContext application = request.getServletContext();
application.setAttribute("appdto", dto);
%>
?id=ap&pw=edge&name=oo 복붙
<br>
<%="출력"%>
<%=dto.getId()%>
<%=dto.getPw()%>

</body>
</html>



