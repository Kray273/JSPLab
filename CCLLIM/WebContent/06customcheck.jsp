<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.*"%>

<%
	String user_id = request.getParameter("user_id");
	String made_title = request.getParameter("made_title");
	String made_content = request.getParameter("made_content");
	String made_status = request.getParameter("made_status");
	 
	DAOmade.insert(user_id, made_title, made_content, made_status);
	
	
	out.print("<script>alert('등록이 완료되었습니다.');</script>");
	out.print("<script>location.href='01main.jsp';</script>");	
		
	
%>

    