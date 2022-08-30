
<%@page import="java.util.ArrayList"%>
<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CCLLIM</title>
</head>
<body>


<%@ include file="01header.jsp" %>

<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">Ask_List_All </p>
</div>	
</div>

<div class="container w-70">
	<table class="table table-hovor table-light">
	  <thead>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">상담자</th>
	      <th scope="col">고객ID</th>
	      <th scope="col">Title</th>
	      <th scope="col">Content</th>
	      <th scope="col">Sol</th>	      
	      <th scope="col">Status</th>
	      <th scope="col">상담일</th>
	      <th scope="col">의뢰일</th>
	      <th scope="col">Detail</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		int i=1;
			ArrayList<DTOask> lists = DAOask.getList();
			for(DTOask list : lists){
		%>
	    <tr>
	      <th scope="row"><%=list.getAsk_no()%></th>
	      <td><%=list.getAsk_sign() %></td>
	      <td><%=list.getUser_id() %></td>
	      <td><%=list.getAsk_title() %></td>
	      <td><%=list.getMade_content() %></td>
	      <td><%=list.getAsk_sol() %></td>
	      <td><%=list.getAsk_status() %></td>
	      <td><%=list.getAsk_day() %></td>
	      <td><%=list.getMade_date() %></td>
	      <td><a href="membersdetail.jsp?no=<%=list.getAsk_no()%>">Check</a></td>
	      </tr>
		<%		
			}
		%>
	  </tbody>
	</table> 
	
	<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="08consultlist.jsp" class="btn btn-outline-primary" role="button">뒤로</a>
	</div>
	</div>

<%@ include file ="01footer.jsp" %>	

</body>
</html>

    
    