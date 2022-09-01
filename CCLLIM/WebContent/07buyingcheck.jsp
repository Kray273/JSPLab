<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.*"%>

<%

	String product_code = request.getParameter("pc"); 
	String product_name = request.getParameter("pn"); 
	String user_id = request.getParameter("ui");
	String user_addr = request.getParameter("ua");
	String user_tel = request.getParameter("ut");
	String user_email = request.getParameter("ue");
	
	DAOdelivery.insert(product_code,product_name,user_id,user_addr,user_tel,user_email);
	 
	response.sendRedirect("03myinfo.jsp");
	
%>

