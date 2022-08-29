<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "DB.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>BoardDetail</title>
<div>
 <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">

 <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>
</div>
    
</head>
<body>
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">BoardDetail</h1>
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