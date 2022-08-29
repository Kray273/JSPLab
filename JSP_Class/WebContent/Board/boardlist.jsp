
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@page import="DB.*"%>



<html>
<head>
<meta charset="UTF-8">
<title>BoardList</title>

</head>
<body>
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Board List</h1>
</div>	
</div>

<div class="container w-70">
	<table class="table table-hovor table-light">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Title</th>
	      <th scope="col">Content</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		int i=1;
	  		  		ArrayList<DTOborad> lists = DAOuser.getList();
	  		  		for(DTOborad boradlist : lists){
	  	%>
	    <tr>
	      <th scope="row"><%=i%></th>
	      <td><a href="boardDetail.jsp?no=<%=list.getBid()%>"><%=list.getTitle()%></a></td>
	      <td><%=list.getContent()%></td>
	    </tr>
		<%		
			i +=1;}
		%>
	  </tbody>
	</table>
	<a href="board_input4.jsp">
	<button type="button" class="btn btn-primary">등록</button></a>
</div>


	
<%@ include file = "../footer.jsp" %>	

</body>
</html>