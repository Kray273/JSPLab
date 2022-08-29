<%@page import="DB.DAOmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mname = request.getParameter("mname");
	String memail = request.getParameter("memail");
	String mgender = request.getParameter("mgender");
	
	int result = DAOmember.kakaologin(mname);
	
	if (result == 1 ){
		//로그인 성공시 세션 넣기
		session.setAttribute("mname",mname);
		
		out.print("<script>alert('로그인 성공, 제품목록으로 이동');</script>");
		out.print("<script>location.href='Productlist.jsp';</script>");
	}  else{
		out.print("<script>alert('회원가입이 필요합니다.');</script>");
		out.print("<script>location.href='memberinputpage.jsp';</script>");
	}
%>
