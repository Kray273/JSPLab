<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="DB.*"%>

<%
	request.setCharacterEncoding("utf-8");

 	String user_id = request.getParameter("user_id");
 	
 	String user_cookie = request.getParameter("user_cookie");
  	
 	DTOuser list = DAOuser.detail(user_id);
 	String user_level = list.getUser_level(); 

	int result = DAOuser.login(user_id);
	
	if (result == 1 ){
		//로그인 성공시 세션 넣기
		session.setAttribute("user_id",user_id);
		session.setAttribute("user_level",user_level); 
		out.print("<script>location.href='01main.jsp';</script>");
	} else if(result == 2){
		out.print("<script>alert('ID 불일치, 재로그인');</script>");
		out.print("<script>location.href='02login.jsp';</script>");
	} 
	
	if (user_cookie != null){
		//체크시
		Cookie cookie = new Cookie("id","admin");
		cookie.setMaxAge(3600); // 초단위 60분
		response.addCookie(cookie);
	} 
	
%>