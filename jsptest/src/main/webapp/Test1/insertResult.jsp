<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입결과!</title>
</head>
<body>
<jsp:useBean id="dto" class="dto.MemberDTO" scope="request"/>
<jsp:setProperty property="*" name="dto"/>
<jsp:useBean id="dao" class="dao.MemberDAO" scope="request"/>
<% 
	int result = dao.insertMember(dto);
	if(result == 1){
		out.println("<h1>" + dto.getId() + "님 회원가입을 축하드립니다.</h1>");
		out.println("<h3>"+ dto.toString() + "</h6>");
		out.println("<h3>"+ result + ("success") + "</h6>");		
	} else{
		out.println("<h1> 회원가입에 실패하였습니다..</h1>");
		out.println("<h3>"+ result + "</h6>");				
	}
	
%>
<a href="member">MemberServlet으로 가기</a>

</body>
</html>