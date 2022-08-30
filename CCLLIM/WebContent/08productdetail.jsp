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
	String no = request.getParameter("no");
    DTOproduct list = DAOproduct.detail(no);
%>
<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5"><%=list.getProduct_name()%></p>
</div>	
</div>
<br><br>
<div class="container">

   <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading"><%=list.getProduct_desc()%> <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
        <img src="image/<%=list.getProduct_img1()%>"><rect width="100%" height="100%" fill="#eee"/><//svg>
      </div>
    </div>
    
    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading"><%=list.getProduct_desc()%> <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
        <img src="image/<%=list.getProduct_img2()%>"><rect width="100%" height="100%" fill="#eee"/><//svg>
      </div>
    </div>
    
    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading"><%=list.getProduct_desc()%> <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
        <img src="image/<%=list.getProduct_img2()%>"><rect width="100%" height="100%" fill="#eee"/><//svg>
      </div>
    </div>
    
    
    <br><br>
    <hr class="featurette-divider">
    <div class="text-center">
	<span class="text-muted"><%=list.getProduct_price()%>Won</span></div>
    <hr class="featurette-divider">
	<br><br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="08productlist.jsp" class="btn btn-outline-primary" role="button">LIST</a>
	</div>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="08productedit.jsp?no=<%=list.getProduct_code()%>" class="btn btn-outline-primary" role="button">Edit</a>
	</div>
</div>

<%@ include file ="01footer.jsp" %>	
	
</body>
</html>

    