<%@page import="dao.MemberDAO"%>
<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 응답2</title>
</head>
<body>

=======================================================
<jsp:useBean id="dto" class="dto.MemberDTO" scope="request"/>
<H1> 회원정보를 생성 완료했습니다. 확인해 볼까요?(읽기전용)</H1>
<h3>아이디:<jsp:getProperty property="id" name="dto"/></h3>
<h3>암호:<jsp:getProperty property="pw" name="dto"/></h3>
<h3>이름:<jsp:getProperty property="name" name="dto"/></h3>
<h3>폰:<%=dto.getPhone() %></h3>
<h3>이메일:<%=dto.getEmail() %></h3>
 
 
</body>
</html>