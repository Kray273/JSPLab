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
	<p class = "display-5">Custom register </p>
</div>	
</div>

<div class="container">
  <main>
      <div class="col-md-7 col-lg-8"> 
      <form action="06customcheck.jsp" method="post">
          
        
          <div class="row g-3">
            <div class="col-12">
              <label for="Name"  class="form-label">Title</label>
             <textarea name="made_title" rows="1" cols="40" class="form-control" placeholder="제목을 입력하세요" required></textarea>
              <div class="invalid-feedback">
                Valid title is required.
              </div>
            </div>
           </div>
           
            <div class="row g-3">
            <div class="col-12">
              <label for="Name"  class="form-label">content</label>
             <textarea id="summernote" name="made_content" rows="5" cols="40" class="form-control" placeholder="" required></textarea>
              <div class="invalid-feedback">
                Valid content is required.
              </div>
              <script>
			$(document).ready(function() {
				$('#summernote').summernote({
					  height: 300,                 // 에디터 높이
					  lang: "ko-KR",					// 한글 설정
					  placeholder: '원하시는 내용을 적어주세요.'	//placeholder 설정
				});
			});
			</script>
            </div>
            </div>
             <br>
             
            <div class="row g-3">
            <div class="col-12">
              <label for="Name"  class="form-label">작성자 : </label>
             <input name="user_id" type="text" value="<%=user_id%>" readonly>
            </div>
           </div>
             
             <input name="made_status" type="hidden" value="1">
             
            <button type="submit" class="btn btn-success btn-lg">등록</button>
			<button type="reset" onclick="reset()" class="btn btn-light btn-lg">취소</button>
       
	</form>
	<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="01main.jsp" class="btn btn-outline-secondary" role="button">Main</a>
	</div>
	<br>
	</div>
</main>
</div>

<%@ include file ="01footer.jsp" %>	

</body>
</html>

    