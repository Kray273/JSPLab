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
	<p class = "display-5">Product_List </p>
</div>	
</div>

<div class="container w-70">
	<table class="table table-hovor table-light">
	  <thead>
	    <tr>
	      <th scope="col">Code</th>
	      <th scope="col">Name</th>
	      <th scope="col">Price</th>
	      <th scope="col">Amount</th>	      
	      <th scope="col">Date</th>
	      <th scope="col">Image</th>
	      <th scope="col">Detail</th>
	      <th scope="col">수정</th>
	      <th scope="col">Launch</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		int i=1;
			ArrayList<DTOproduct> lists = DAOproduct.getList();
			for(DTOproduct list : lists){
		%>
	    <tr>
	      <th scope="row"><%=list.getProduct_code()%></th>
	      <td><%=list.getProduct_name() %></td>
	      <td><%=list.getProduct_price()%></td>
	      <td><%=list.getProduct_amount()%></td>
	      <td><%=list.getProduct_date()%></td>
	      <td><img src="images/<%=list.getProduct_img1()%>" width="50px" height="50"></td>
	      <td><a href="08productdetail.jsp?no=<%=list.getProduct_code()%>">Detail</a></td>
	      <td><a href="08productedit.jsp?no=<%=list.getProduct_code()%>">Update</a></td>
	      <td> <%=list.getProduct_launch()%></td>
	       </tr>
		<%		
			}
		%>
	  </tbody>
	</table> 
	<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="08productregister.jsp" class="btn btn-outline-primary" role="button">등록</a>
	</div>
	</div>

<%@ include file ="01footer.jsp" %>	

</body>
</html>

    