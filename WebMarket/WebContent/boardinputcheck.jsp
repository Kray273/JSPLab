<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.*"%>

<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = (String)session.getAttribute("mname"); 
	
	DAOborad.boardinsert(title, content, author);
	
	response.sendRedirect("boardlist.jsp");
%>

