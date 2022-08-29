<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "DB.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>memberDetail</title>
    
</head>
<body>
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">MemberDetail</h1>
</div>	
</div>

<%
	String no = request.getParameter("no");
	DTOborad list = DAOborad.fileDetail(no);

	String img = list.getIname();
	String imgstr = "";
	if(img != null){
		imgstr ="../images/" + img;
	}
%>
<main>
  <div class="album bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
 
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="10" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
            <title>Placeholder</title>
            <rect width="100%" height="100%" fill="#55595c"/>
            <text x="50%" y="50%" fill="#eceeef" dy=".3em"><img src="<%=imgstr%>">
            </text>
            </svg>

            <div class="card-body">
              <p class="card-text"><%=list.getContent()%>.<%=list.getIname()%></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary"><%=list.getTitle()%></button>
                  <button type="button" class="btn btn-sm btn-outline-secondary"><%=list.getBid()%></button>
                </div>
                <small class="text-muted"><%=list.getBdate()%></small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="boardlist.jsp" class="btn btn-outline-secondary" role="button">목록보기</a>
		<a href="board_input4.jsp" class="btn btn-primary" role="button">등록</a>
	</div>
	<br>
  	
</main>

	
<%@ include file = "../footer.jsp" %>	

</body>
</html>