<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String mname = (String)session.getAttribute("mname");

	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
	
	boolean login = true;
	
%> 

<!DOCTYPE html>
<%@ page import = "DB.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>ProductDetail</title>
</head>
<body>
<%@ include file = "header.jsp" %>
<%
	if (login) {
		out.print(mname + "님 로그인 상태입니다.");
	}else {
		out.print("방문을 환영합니다. 로그인 하세요.");
	}
%>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">ProductDetail</h1>
</div>	
</div>

<%	
	String no = request.getParameter("no");
	DTOproduct list = DAOproduct.fileDetail(no);

	String img1 = list.getIname1();
	String imgstr1 = "";
	String img2 = list.getIname2();
	String imgstr2 = "";
	String img3 = list.getIname3();
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

 <div class="container ">
 <div class="w-50 h-50">
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	   	      <img src="<%=imgstr1%>" class="d-block w-100" alt="..." >
	    </div>
	    <div class="carousel-item active">
	      <img src="<%=imgstr2%>" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item active">
	      <img src="<%=imgstr3%>" class="d-block w-100" alt="...">
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div> 
	</div>
	</div>


<%@ include file = "footer.jsp" %>	

</body>
</html>