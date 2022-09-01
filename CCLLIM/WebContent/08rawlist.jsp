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
	<p class = "display-5">Raw_List </p>
</div>	
</div>

<div class="container w-70">
	<table class="table table-hovor table-light">
	  <thead>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">Code</th>
	      <th scope="col">Name</th>
	      <th scope="col">수량</th>
	      <th scope="col">image</th>	      
	      <th scope="col">위치</th>
	      <th scope="col">수정일</th>
	      <th scope="col">수정</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		int i=1;
			ArrayList<DTOraw> lists = DAOraw.getList();
			for(DTOraw list : lists){
		%>
	    <tr>
	      <th scope="row"><%=i%></th>
	      <td><%=list.getRaw_code()%></td>
	      <td><%=list.getRaw_name()%></td>
	      <td><%=list.getRaw_amount()%></td>
	      <td><img src="images/<%=list.getRaw_image()%>" width="50px" height="50"></td>
	      <td><%=list.getRaw_location()%></td>
	      <td><%=list.getRaw_date()%></td>
	      <td><a href="08rawedit.jsp?no=<%=list.getRaw_code()%>">Update</a></td>
	    </tr>
		<%		
			i +=1;}
		%>
	  </tbody>
	</table> 
	<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="08rawregister.jsp" class="btn btn-outline-primary" role="button">등록</a>
	</div>
	</div>

<%@ include file ="01footer.jsp" %>	

</body>
</html>

    