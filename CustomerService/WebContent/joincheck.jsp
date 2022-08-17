<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="DB.*"%>

<%
	request.setCharacterEncoding("utf-8");

 	String id = request.getParameter("id");
 	String name = request.getParameter("name");
 	String pass = request.getParameter("pass");

	int result = DAOcustomer.join(id,name,pass);
	//회원가입시 2가지의 경우의 수가 발생된다.
	// 1. 성공, 2. 실패-이미 가입된 회원 존재
	if (result == 1 ){
		response.sendRedirect("login.jsp");
	} else {
		response.sendRedirect("join.jsp");
	}
	
%>