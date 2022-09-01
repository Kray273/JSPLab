
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
	<p class = "display-5">Ask_List </p>
</div>	
</div>

<div class="container w-70">
<h5>Asking</h5>
<div class="text-end">
<a href="08consultlistall.jsp" class="btn btn-secondary btn-sm text-end" role="button">Ask_all</a>
</div>
	<table class="table table-hovor table-light">
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
	      <th scope="col">Consult</th>
	    </tr>
	  	<%
	  		int i=1;
			ArrayList<DTOask> lists = DAOask.getList12();
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
	      <td><a href="08consultedit.jsp?no=<%=list.getAsk_no()%>">Check</a></td>
	      </tr>
		<%		
			}
		%>
 </table> 
 
 <table class="table table-hovor table-light">
	<hr class="my-4">
	<h5>Request</h5>
	<div class="text-end">
<a href="08madelist.jsp" class="btn btn-secondary btn-sm text-end" role="button">Made_list</a>
</div>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">User_ID</th>
	      <th scope="col">Status</th>
	      <th scope="col">Title</th>	      
	      <th scope="col">의뢰일</th>
	      <th scope="col">Agree</th>
	    </tr>
	  <%	ArrayList<DTOmade> lists2 = DAOmade.getStatus123();
		  for(DTOmade list : lists2){ %>
	    <tr>
	      <th scope="row"><%=list.getMade_no()%></th>
	      <td><%=list.getUser_id() %></td>
	      <td><%=list.getMade_status() %></td>
	      <td><%=list.getMade_title() %></td>
	       <td><%=list.getMade_date() %></td>
	      <td><a href="08agree.jsp?no=<%=list.getMade_no()%>">Check</a></td>
	      </tr>
		<%	}%>
	</table>
	
	
	
</div>

<%@ include file ="01footer.jsp" %>	

</body>
</html>

    
    