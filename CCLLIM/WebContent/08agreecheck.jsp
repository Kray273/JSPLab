<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.*"%>

<%
	String ask_title = request.getParameter("ask_title");
	String user_id = request.getParameter("user_id");
	String made_content = request.getParameter("made_content");
	String ask_sol = request.getParameter("ask_sol");
	String ask_sign = request.getParameter("ask_sign");
	String ask_status = request.getParameter("ask_status");
	String made_date = request.getParameter("made_date");
	
   DAOask.insert(ask_title, user_id, made_content, ask_sol, ask_sign, ask_status, made_date);
	
	out.print("<script>alert('등록이 완료되었습니다.');</script>");
	out.print("<script>location.href='08consultlist.jsp';</script>");	
		
	
%>
