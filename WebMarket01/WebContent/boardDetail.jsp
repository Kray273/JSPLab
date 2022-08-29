<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "DB.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>BoardDetail</title>
<div>

</head>
<body>
<%@ include file = "header.jsp" %>
<%
	mname = (String)session.getAttribute("mname");

	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
%>
<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">BoardDetail</h1>
</div>	
</div>

<%	
	String no = request.getParameter("no");
	DTOboard list = DAOboard.Detail(no);
%>
<div class="container">
	<main>
		<div class="col-md-7 col-lg-8"> 
		<div class="card col-12" >
		<div class="card-body">
			<h5 class="card-title"><%=list.getTitle()%></h5>
			<h6 class="card-subtitle mb-2 text-muted text-end "><%=list.getAuthor()%></h6>
			<hr class="my-2">
			<p class="card-text"><%=list.getContent()%></p>
			<hr class="my-2">
			<p class="card-text"><%=list.getBid()%></p>
			<p class="card-text text-end"><%=list.getBdate()%></p> 
		</div>
		</div>
		<div class="text-end">
		<a href="boardupdatepage.jsp?no=<%=list.getBid()%>" class="card-link text-end">수정</a>
		</div>
		</div>
		
	</main>
</div>

 <br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="boardlist.jsp" class="btn btn-outline-secondary" role="button">목록보기</a>
	</div>


<%@ include file = "footer.jsp" %>	

</body>
</html>