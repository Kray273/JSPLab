<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
<jsp:useBean id="dto" class="dto.MemberDTO" scope="request"/>
<h1><%=dto.getId()%>님의 회원정보는 다음과 같습니다.</h1>

<% out.println("<h3>"+ dto.toString() + "</h6>");%>
아이디 : <jsp:getProperty property="id" name="dto"/><br>
암호 : <jsp:getProperty property="pw" name="dto"/><br>
이름 : <jsp:getProperty property="name" name="dto"/><br>
주소 : <jsp:getProperty property="address" name="dto"/><br>
<a href="member">MemberServlet으로 가기</a>
</body>
</html>