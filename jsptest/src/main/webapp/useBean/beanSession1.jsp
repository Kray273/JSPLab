<%@page import="dao.MemberDAO"%>
<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 Session요청</title>
</head>
<body>

=======================================================
<jsp:useBean id="dto" class="dto.MemberDTO" scope="session"/> 
<jsp:setProperty property="*" name="dto"/>

</body>
</html>