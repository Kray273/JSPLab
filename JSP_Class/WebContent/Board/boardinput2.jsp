<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="DB.*" %>

<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	
	DAOboard.join(title, memo);
%>
