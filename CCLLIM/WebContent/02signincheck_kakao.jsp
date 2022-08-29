<%@page import="DB.DAOuser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id");
	
	int result = DAOuser.kakaologin(user_id);
	
	if (result == 1 ){
		//로그인 성공시 세션 넣기
		session.setAttribute("user_id",user_id);
		out.print("<script>location.href='01main.jsp';</script>");
	}  else{
		out.print("<script>alert('회원가입이 필요합니다.');</script>");
		out.print("<script>location.href='02singup.jsp';</script>");
	}
	
%>