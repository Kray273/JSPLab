<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CCLLIM</title>
<!-- 서머노트를 위해 추가해야할 부분 -->
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resource/summernote/JS/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resource/summernote/JS/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/summernote/CSS/summernote/summernote-lite.css">
 
</head>
<body>


<%@ include file="01header.jsp" %>
 <%
	    user_id = (String)session.getAttribute("user_id");
	    level = (String)session.getAttribute("user_level");
    	    	
	    if (user_id == null) {
			out.println("<script>alert('로그인이 필요합니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		}
%> 

<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">Making </p>
</div>	
</div>

<div class="container">
  <main>
      <div class="col-md-20 col-lg-25"> 
      <div class="p-4 p-md-10 mb-4 rounded text-bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic">준비해서 돌아오겠습니다. <br>양해 부탁드립니다.</h1>
      <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what’s most interesting in this post’s contents.</p>
      <p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue ...</a></p>
    </div>
  </div>
  <hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="01main.jsp" class="btn btn-outline-secondary" role="button">Main</a>
	</div>
	<br>
	
</main>
</div>



<%@ include file ="01footer.jsp" %>	

</body>
</html>

    