<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>Board_Input</title>
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
<%@ include file = "header.jsp" %>
<%
	String no = request.getParameter("no");
   DTOborad list = DAOborad.Detail(no);
	mname = (String)session.getAttribute("mname");
	if (!mname.equals(list.getAuthor())) {
		out.println("<script>alert('게시물의 작성자가 아닙니다.');</script>");
		out.println("<script>location.href='boardlist.jsp'</script>");
	}
%>
<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Board</h1>
</div>	
</div>


<div class="container">
  <main>
      <div class="col-md-7 col-lg-8"> 
      <form action="boardupdatecheck.jsp" >
          <input name="bid" type="hidden" value="<%=list.getBid()%>">
        
          <div class="row g-3">
            <div class="col-12">
              <label for="Name"  class="form-label">Title</label>
             <textarea name="title" rows="1" cols="40" class="form-control" placeholder="제목을 입력하세요" required><%=list.getTitle()%></textarea>
              <div class="invalid-feedback">
                Valid title is required.
              </div>
            </div>
           </div>
           
            <div class="row g-3">
            <div class="col-12">
              <label for="Name"  class="form-label">content</label>
             <textarea id="summernote" name="content" rows="5" cols="40" class="form-control" placeholder="" required><%=list.getContent()%></textarea>
              <div class="invalid-feedback">
                Valid content is required.
              </div>
              <script>
			$(document).ready(function() {
				$('#summernote').summernote({
					  height: 100,                 // 에디터 높이
					  lang: "ko-KR",					// 한글 설정
					  placeholder: '설명을 적어주세요.'	//placeholder 설정
				});
			});
			</script>
            </div>
            </div>
             <br>
             
             
            <button type="submit" class="btn btn-primary btn-lg">등록</button>
			<button type="reset" onclick="reset()" class="btn btn-danger btn-lg">취소</button>
       
      

    <hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="boardlist.jsp" class="btn btn-outline-secondary" role="button">목록보기</a>
	</div>
	<br>
	</form>
	</div>
</main>
</div>


<%@ include file = "footer.jsp" %>	

</body>
</html>