<%@page import="dto.MemberDTO"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인!</title>
</head>
<body>
<h3>로그인 화면입니다.</h3>
<% MemberDAO dao = new MemberDAO();
	MemberDTO dto = dao.getMember("test","pass");
	request.setAttribute("member", dto);

%>
<br>
<jsp:include page="bottom.jsp">
	<jsp:param value="jsp" name="id"/>
	<jsp:param value="<%=request.getRequestURI()%>" name="filename"/>
</jsp:include>
</body>
</html>