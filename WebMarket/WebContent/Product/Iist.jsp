<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@page import="DB.DAOproduct"%>
<%@page import="DB.DTOproduct"%>



<html>
<head>
<meta charset="UTF-8">
<title>ProductList</title>

</head>
<body>
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Product List</h1>
</div>	
</div>

<div class="container w-70">
	<table class="table table-hovor table-light">
	  <thead>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">ID</th>
	      <th scope="col">Name</th>
	      <th scope="col">Price</th>
	      <th scope="col">Image</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		String pno = null;

	  		ArrayList<DTOproduct> lists = DAOproduct.getList();
		
			for(DTOproduct list : lists){
				
		%>
	    <tr>
	      <th scope="row"><%=list.getPno()%></th>
	      <td><a href="Detail.jsp?no=<%=list.getPno()%>"><%=list.getPid()%></a></td>
	      <td><%=list.getPname()%></td>
	      <td><%=list.getPprice()%></td>
	      <td><img src="../images/<%=list.getIname1()%>" width="25px" height="25px"></td>
	    </tr>
		<%		
		pno+=1;}
		%>
	  </tbody>
	</table>
	 <br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="Inputpage.jsp" class="btn btn-primary" role="button">등록</a>
	</div>
	
</div>
	
<%@ include file = "../footer.jsp" %>	

</body>
</html>