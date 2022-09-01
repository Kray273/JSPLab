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
<%
	    user_id = (String)session.getAttribute("user_id");
	    level = (String)session.getAttribute("user_level");
    	    	
	    if (user_id == null) {
			out.println("<script>alert('로그인이 필요합니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} else{
	    if (level.equals("4")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} else if (level.equals("5")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} else if (level.equals("6")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		}}
%> 
<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">User_Consult </p>
</div>	
</div>

<%
	String no = request.getParameter("no");
	ArrayList<DTOask> lists1 = DAOask.getListU(no);
	ArrayList<DTOmade> lists2 = DAOmade.getListU(no);
%>

<div class="container w-70">
<h5>Asking</h5>
	<table class="table table-hovor table-light">
	   <tr>
	      <th scope="col">No</th>
	      <th scope="col">상담자</th>
	      <th scope="col">고객ID</th>
	      <th scope="col">Title</th>     
	      <th scope="col">Status</th>
	      <th scope="col">상담일</th>
	      <th scope="col">Consult</th>
	    </tr>
	  	<%
	  		int i=1;
			for(DTOask list : lists1){
		%>
	    <tr>
	      <th scope="row"><%=i%></th>
	      <td><%=list.getAsk_sign() %></td>
	      <td><%=list.getUser_id() %></td>
	 	  <td><%=list.getAsk_title() %></td>
	      <td><%=list.getAsk_status() %></td>
	      <td><%=list.getAsk_day() %></td>
	      <td><a href="08consultedit.jsp?no=<%=list.getAsk_no()%>">Check</a></td>
	      </tr>
		<%		
			i += 1; }
		%>
 </table> 
 
 <table class="table table-hovor table-light">
	<hr class="my-4">
	<h5>Request</h5>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">User_ID</th>
	      <th scope="col">Status</th>
	      <th scope="col">Title</th>	      
	      <th scope="col">의뢰일</th>
	      <th scope="col">Agree</th>
	    </tr>
	  <% 
		  for(DTOmade list : lists2){ %>
	    <tr>
	      <th scope="row"><%=i%></th>
	      <td><%=list.getUser_id() %></td>
	      <td><%=list.getMade_status() %></td>
	      <td><%=list.getMade_title() %></td>
	       <td><%=list.getMade_date() %></td>
	      <td><a href="08agree.jsp?no=<%=list.getMade_no()%>">Check</a></td>
	      </tr>
		<% i += 1;	}%>
	</table>
	
	
	<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="08userlist.jsp" class="btn btn-outline-primary" role="button">뒤로</a>
	</div>
</div>	
	


<%@ include file ="01footer.jsp" %>	

</body>
</html>