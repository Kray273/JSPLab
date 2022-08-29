<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.*"%>

<%
	String user_id = request.getParameter("user_id");
	String user_pass = request.getParameter("user_pass");
	String user_tel = request.getParameter("user_tel");
	String user_email = request.getParameter("user_email");
	String user_addr = request.getParameter("user_addr");
	
	DAOuser.singup(user_id,user_pass,user_tel,user_email,user_addr);

	
	out.print("<script>alert('회원가입해주셔서 축하힙니다.');</script>");
	out.print("<script>location.href='02signin.jsp';</script>");	
%>

    