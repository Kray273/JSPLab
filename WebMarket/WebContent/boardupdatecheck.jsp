<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.*"%>


<%
	String title = request.getParameter("title");
	String bid =request.getParameter("bid");
	String content = request.getParameter("content"); 
	
	DAOboard.boardupdate(bid,title,content);
%>

<script>
location.href="boardDetail.jsp?no=<%=bid%>"
</script> 