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
	<p class = "display-5">Delivery_List </p>
</div>	
</div>

<div class="container w-70">
	<table class="table table-hovor table-light">
	  <thead>
	    <tr>
	      <th scope="col">no</th>
	      <th scope="col">code</th>
	      <th scope="col">name</th>
	      <th scope="col">User_id</th>	      
	      <th scope="col">Tel</th>
	      <th scope="col">Address</th>
	      <th scope="col">Email</th>
	      <th scope="col">Status</th>
	      <th scope="col">Delivery</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		int i=1;
			ArrayList<DTOdelivery> lists = DAOdelivery.getList();
			for(DTOdelivery list : lists){
		%>
	    <tr>
	      <th scope="row"><%=list.getDelivery_no()%></th>
	      <td><a href="08productdetail.jsp?no=<%=list.getProduct_code()%>"> <%=list.getProduct_code() %></a></td>
	      <td><%=list.getProduct_name() %></td>
	      <td><%=list.getUser_id() %></td>
	      <td><%=list.getUser_tel() %></td>
	      <td><%=list.getUser_addr() %></td>
	      <td><%=list.getUser_email() %></td>
	      <td><%=list.getDelivery_status()%></td>
	      <td><%=list.getDelivery_done()%></td>
	       </tr>
		<%		
			}
		%>
	  </tbody>
	</table> 
	<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="#" class="btn btn-outline-primary" role="button">등록</a>
	</div>
	</div>

<%@ include file ="01footer.jsp" %>	

</body>
</html>

    