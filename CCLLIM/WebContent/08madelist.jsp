
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
	<p class = "display-5">Made_List </p>
</div>	
</div>


<div class="container w-70">

	<table class="table table-hovor table-light">
	<hr class="my-4">
	<h5>Custom</h5>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">User_ID</th>
	      <th scope="col">Status</th>
	      <th scope="col">Title</th>
	      <th scope="col">Content</th>	      
	      <th scope="col">의뢰일</th>
	      <th scope="col">Detail</th>
	    </tr>
	  <%	ArrayList<DTOmade> lists1 = DAOmade.getStatus1();
		  for(DTOmade list : lists1){ %>
	    <tr>
	      <th scope="row"><%=list.getMade_no()%></th>
	      <td><%=list.getUser_id() %></td>
	      <td><%=list.getMade_status() %></td>
	      <td><%=list.getMade_title() %></td>
	      <td><%=list.getMade_content() %></td>
	      <td><%=list.getMade_date() %></td>
	      <td><a href="membersdetail.jsp?no=<%=list.getMade_no()%>">Check</a></td>
	      </tr>
		<%	}%>
	</table> 
	
	<table class="table table-hovor table-light">
	<hr class="my-4">
	<h5>Repire</h5>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">User_ID</th>
	      <th scope="col">Status</th>
	      <th scope="col">Title</th>
	      <th scope="col">Content</th>	      
	      <th scope="col">의뢰일</th>
	      <th scope="col">Detail</th>
	    </tr>
	  <%	ArrayList<DTOmade> lists2 = DAOmade.getStatus2();
		  for(DTOmade list : lists2){ %>
	    <tr>
	      <th scope="row"><%=list.getMade_no()%></th>
	      <td><%=list.getUser_id() %></td>
	      <td><%=list.getMade_status() %></td>
	      <td><%=list.getMade_title() %></td>
	      <td><%=list.getMade_content() %></td>
	      <td><%=list.getMade_date() %></td>
	      <td><a href="membersdetail.jsp?no=<%=list.getMade_no()%>">Check</a></td>
	      </tr>
		<%	}%>
	</table> 
	
	<table class="table table-hovor table-light">
	<hr class="my-4">
	<h5>Making</h5>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">User_ID</th>
	      <th scope="col">Status</th>
	      <th scope="col">Title</th>
	      <th scope="col">Content</th>
	      <th scope="col">Raw</th>	      
	      <th scope="col">의뢰일</th>
	      <th scope="col">Detail</th>
	    </tr>
	  <%	ArrayList<DTOmade> lists3 = DAOmade.getStatus3();
		  for(DTOmade list : lists3){ %>
	    <tr>
	      <th scope="row"><%=list.getMade_no()%></th>
	      <td><%=list.getUser_id() %></td>
	      <td><%=list.getMade_status() %></td>
	      <td><%=list.getMade_title() %></td>
	      <td><%=list.getMade_content() %></td>
	      <td><%=list.getMade_raw() %></td>
	      <td><%=list.getMade_date() %></td>
	      <td><a href="membersdetail.jsp?no=<%=list.getMade_no()%>">Check</a></td>
	      </tr>
		<%	}%>
	</table>
	
	<table class="table table-hovor table-light">
	<hr class="my-4">
	<h5>Request Check</h5>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">User_ID</th>
	      <th scope="col">Status</th>
	      <th scope="col">Title</th>	      
	      <th scope="col">의뢰일</th>
	      <th scope="col">Detail</th>
	    </tr>
	  <%	ArrayList<DTOmade> lists4 = DAOmade.getStatus4();
		  for(DTOmade list : lists4){ %>
	    <tr>
	      <th scope="row"><%=list.getMade_no()%></th>
	      <td><%=list.getUser_id() %></td>
	      <td><%=list.getMade_status() %></td>
	      <td><%=list.getMade_title() %></td>
	       <td><%=list.getMade_date() %></td>
	      <td><a href="membersdetail.jsp?no=<%=list.getMade_no()%>">Check</a></td>
	      </tr>
		<%	}%>
	</table>
	
	
	<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="08consultlist.jsp" class="btn btn-outline-primary" role="button">뒤로</a>
	</div>

</div>

<%@ include file ="01footer.jsp" %>	

</body>
</html>

    
    