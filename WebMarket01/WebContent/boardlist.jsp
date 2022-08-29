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
<%@ include file = "header.jsp" %>
<%
	mname = (String)session.getAttribute("mname");

	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
%>
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
	      <th scope="col">author</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		int i=1;
			ArrayList<DTOboard> lists = DAOboard.getList();
			for(DTOboard list : lists){
		%>
	    <tr>
	      <th scope="row"><%=i%></th>
	      <td><a href="boardDetail.jsp?no=<%=list.getBid()%>"><%=list.getTitle()%></a></td>
	      <td>.....</td>
	      <td><%=list.getAuthor()%></td>
	    </tr>
		<%		
			i +=1;}
		%>
	  </tbody>
	</table> 
	<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="boardinputpage.jsp" class="btn btn-outline-primary" role="button">등록</a>
	</div>


	
<%@ include file = "footer.jsp" %>	

</body>
</html>
