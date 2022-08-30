<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="DB.*"%>

<% 
request.setCharacterEncoding("utf-8");

 	String user_id = request.getParameter("user_id");
 	String user_pw = request.getParameter("user_pw");
 	
	int result = DAOuser.login(user_id, user_pw);
	
	if (result == 1 ){
		//로그인 성공시 세션 넣기
		DTOuser list = DAOuser.detail(user_id);
 	    String user_level = list.getUser_level(); 
		session.setAttribute("user_id",user_id);
		session.setAttribute("user_level",user_level); 
		out.print("<script>location.href='01main.jsp';</script>");
	} else if(result == 2){
		out.print("<script>alert('비밀번호 불일치, 재로그인');</script>");
		out.print("<script>location.href='02signin.jsp';</script>");
	} else{
		out.print("<script>alert('회원가입이 필요합니다.');</script>");
		out.print("<script>location.href='02singup.jsp';</script>");
	}
	%>
	