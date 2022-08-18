<%@page import="DB.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>파일목록</h3>
<%
	ArrayList<DTOboard> lists = DAOboard.getList();
	for(DTOboard list : lists){
%>

	<%=list.getBid()%>	
	<a href="Filedetail.jsp?no=<%=list.getBid()%>"><%=list.getBid()%></a>	
	<br>
<%		
	}
%>

</body>
</html>