<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="DB.*"%>

<%
	request.setCharacterEncoding("utf-8");

 	String id = request.getParameter("id");
 	String pass = request.getParameter("pass");

	int result = DAOcustomer.login(id, pass);
	//로그인시 3가지 경우의 수가 발생
		//1. 성공(id,pw 일치) -> 승인 후 main으로 
		//2. 실패(id 일치, pw 불일치)-> 다시 로그인시도로 
		//3. 실패(id 없는 경우)-> 회원가입으로 
	
	if (result == 1 ){
		response.sendRedirect("main.jsp");
	} else if(result == 2){
		response.sendRedirect("login.jsp");
	} else{
		response.sendRedirect("join.jsp");
	}
	
%>