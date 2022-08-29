
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@page import="DB.*"%>


<html>
<head>
<meta charset="UTF-8">
<title>MemberList</title>

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
	<h1 class = "display-3">Member List</h1>
</div>	
</div>

<div class="container w-70">
	<table class="table table-hovor table-light">
	  <thead>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">Name</th>
	      <th scope="col">Tel</th>
	      <th scope="col">Email</th>
	      <th scope="col">Level</th>
	      <th scope="col">Date</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		int i=1;
			ArrayList<DTOmember> lists = DAOmember.getList();
			for(DTOmember list : lists){
		%>
	    <tr>
	      <th scope="row"><%=i%></th>
	      <td><a href="membersdetail.jsp?no=<%=list.getMno()%>"><%=list.getMname()%></a></td>
	      <td><%=list.getMtel()%></td>
	      <td><%=list.getMemail()%></td>
	      <td><%=list.getMlevel()%></td>
	      <td><%=list.getMdate()%></td>
	    </tr>
		<%		
			i +=1;}
		%>
	  </tbody>
	</table> 
	<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="memberinputpage.jsp" class="btn btn-outline-primary" role="button">등록</a>
	</div>


	
<%@ include file = "footer.jsp" %>	

</body>
</html>