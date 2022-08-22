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
<%@ include file = "../header.jsp" %>

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
	      <th scope="col">Image</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		String mno = null;

	  		ArrayList<DTOmember2> lists = DAOmember2.getList();
		
			for(DTOmember2 list : lists){
				
		%>
	    <tr>
	      <th scope="row"><%=list.getMno()%></th>
	      <td><a href="memberDetail.jsp?no=<%=list.getMno()%>"><%=list.getMname()%></a></td>
	      <td><%=list.getMtel()%></td>
	      <td><img src="../images/<%=list.getIname()%>" width="25px" height="25px"></td>
	    </tr>
		<%		
		
		mno+=1;}
		%>
	  </tbody>
	</table>
	 <br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="memberinputpage3.jsp" class="btn btn-primary" role="button">등록</a>
	</div>
	
</div>
	
<%@ include file = "../footer.jsp" %>	

</body>
</html>