<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="DB.*"%>


<%
	request.setCharacterEncoding("utf-8");

	String user_id = (String)session.getAttribute("user_id");
 	String user_pw = request.getParameter("user_pw");

 	int result = DAOuser.login(user_id, user_pw);
	
	if (result == 1 ){
		//탈퇴성공	
		out.print("<script>alert('탈퇴 성공, 이용해 주셔서 감사합니다.');</script>");
		int result2 = DAOuser.drop(user_id,user_pw);
		if(result2 == 1){
			session.removeAttribute("user_id");
			out.print("<script>location.href='01main.jsp';</script>");
		} else{
			out.print("<script>alert('비밀번호가 일치하지 않습니다');</script>");
			out.print("<script>location.href='03myinfodrop.jsp';</script>");
		}
	} else{
		out.print("<script>alert('비밀번호가 일치하지 않습니다');</script>");
		out.print("<script>location.href='03myinfodrop.jsp';</script>");
	}
	
%>