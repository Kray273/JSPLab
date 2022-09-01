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
	<p class = "display-5">User_List </p>
</div>	
</div>

<div class="container w-70">
	<table class="table table-hovor table-light">
	  <thead>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">ID</th>
	      <th scope="col">Tel</th>
	      <th scope="col">Email</th>	      
	      <th scope="col">Address</th>
	      <th scope="col">Level</th>
	      <th scope="col">Date</th>
	      <th scope="col">Consult</th>
	      <th scope="col">Edit</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		int i=1;
			ArrayList<DTOuser> lists = DAOuser.getList();
			for(DTOuser list : lists){
		%>
	    <tr>
	      <th scope="row"><%=list.getUser_no()%></th>
	      <td><%=list.getUser_id() %></td>
	      <td><%=list.getUser_tel() %></td>
	      <td><%=list.getUser_email() %></td>
	      <td><%=list.getUser_addr() %></td>
	      <td><%=list.getUser_level() %></td>
	      <td><%=list.getUser_date() %></td>
	      <td><a href="08userconsult.jsp?no=<%=list.getUser_id()%>">Check</a></td>
	      <td><a href="08useredit.jsp?no=<%=list.getUser_id()%>">Edit</a></td>
	       </tr>
		<%		
			}
		%>
	  </tbody>
	</table> 
	</div>
	

<%@ include file ="01footer.jsp" %>	

</body>
</html>