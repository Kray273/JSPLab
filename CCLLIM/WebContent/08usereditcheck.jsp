<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.*"%>

<%
	String user_id = request.getParameter("user_id");
	String user_tel = request.getParameter("user_tel");
	String user_email = request.getParameter("user_email");
	String user_addr = request.getParameter("user_addr");
	String user_level = request.getParameter("user_level");
	 
	DAOuser.edit(user_id, user_tel, user_email, user_addr,user_level);

	
	out.print("<script>alert('수정완료.');</script>");
	out.print("<script>location.href='08userlist.jsp';</script>");	 
%>
   

    