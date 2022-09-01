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
	
	String img1 = list.getProduct_img1();
	String imgstr1 = "";
	String img2 = list.getProduct_img2();
	String imgstr2 = "";
	String img3 = list.getProduct_img3();
	String imgstr3 = "";
	if(img1 != null){
		imgstr1 ="images/" + img1;
	} 
	if(img2 != null){
		imgstr2 ="images/" + img2;
	}
	if(img3 != null){
		imgstr3 ="images/" + img3;
	} 
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
        <img src="<%=imgstr1%>" width="500" height="500" ><rect width="100%" height="100%" fill="#eee"/>
      </div>
    </div>
    
    <br>
    <hr class="featurette-divider">
    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading"><%=list.getProduct_desc()%> <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
      </div>
      <div class="col-md-5">
        <img src="<%=imgstr2%>" width="500" height="500" ><rect width="100%" height="100%" fill="#eee"/>
      </div>
    </div>
    
    <br>
    <hr class="featurette-divider">
    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading"><%=list.getProduct_desc()%> <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
      </div>
      <div class="col-md-5">
        <img src="<%=imgstr3%>" width="500" height="500" ><rect width="100%" height="100%" fill="#eee"/>
      </div>
    </div>
    
    
    <br>
    <hr class="featurette-divider">
    <div class="text-center">
	<span class="text-muted"><%=list.getProduct_price()%>Won</span></div>
    <hr class="featurette-divider">
	<br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="07buying.jsp?no=<%=list.getProduct_code()%>" class="btn btn-outline-success" role="button">Buy</a>
	</div>
	<br>
</div>

<%@ include file ="01footer.jsp" %>	
	
</body>
</html>

    