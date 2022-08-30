
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
	<p class = "display-5">Made_Detail </p>
</div>	
</div>
<%
	String no = request.getParameter("no");
	DTOmade list = DAOmade.detail(no);
%> 

<div class="container w-70 bg-light">

  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Title</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" value="<%=list.getMade_title()%>" readonly>
    </div>
  </div>
  
  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Content</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" value="<%=list.getMade_content()%>" readonly>
    </div>
  </div>
  <<div class="text-end"> 
     <a href="03myconsultedit.jsp?no=<%=list.getMade_no()%>" class="btn btn-secondary btn-sm text-end" role="button">Edit</a>
     <a href="03myconsultdelete.jsp?no=<%=list.getMade_no()%>" class="btn btn-secondary btn-sm text-end" role="button">Delete</a>
</div>
</div>
<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="03myconsultlist.jsp" class="btn btn-outline-primary" role="button">뒤로</a>
	</div>
	
<%@ include file ="01footer.jsp" %>	

</body>
</html>
