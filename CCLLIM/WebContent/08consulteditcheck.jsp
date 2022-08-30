<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ask_no = request.getParameter("ask_no");
	String ask_title = request.getParameter("ask_title");
	String ask_sol = request.getParameter("ask_sol");
	String ask_sign = request.getParameter("ask_sign");
	String ask_status = request.getParameter("ask_status");
	
	DAOask.edit(ask_no, ask_title, ask_sol, ask_sign,ask_status);
	
	out.print("<script>alert('수정이 완료되었습니다.');</script>");
	out.print("<script>location.href='08consultlist.jsp';</script>");	
		
	
%>

    