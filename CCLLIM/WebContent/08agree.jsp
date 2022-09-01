<%@page import="DB.*"%>
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
		} else{
	    if (level.equals("4")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} else if (level.equals("5")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} else if (level.equals("6")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		}}
%>

<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">Agree</p>
</div>	
</div>


<%
 String no = request.getParameter("no");

	DTOmade list = DAOmade.detail(no);
%>

	
<div class="container">
  <main>
      <form action="08agreecheck.jsp" method="post">
      <div class="col-md-7 col-lg-8"> 
      
		  <div class="row mb-3">
		<label for="inputEmail3" class="col-sm-2 col-form-label">Title</label>
		<div class="col-sm-10">
		  <input type="text" name="ask_title" class="form-control" id="inputEmail3" value="<%=list.getMade_title()%>">
		  </div>
		</div>
		
		 <div class="row mb-3">
		<label for="inputEmail3" class="col-sm-2 col-form-label">User ID</label>
		<div class="col-sm-10">
		  <input type="text" name="user_id" class="form-control" id="inputEmail3" value="<%=list.getUser_id()%>" readonly>
		  </div>
		</div>
		
		<div class="row mb-3">
		  <label for="inputEmail3" class="col-sm-2 col-form-label">Content</label>
		  <div class="col-sm-10">
		    <input type="text" class="form-control"  name="made_content" id="inputEmail3" value="<%=list.getMade_content()%>" readonly>
		    </div>
		</div>
		
		

		</div>
		
            <div class="row g-3">
            <div class="col-12">
              <label for="Name"  class="form-label">상담내용</label>
             <textarea id="summernote" name="ask_sol" rows="5" cols="40" class="form-control" placeholder="" required></textarea>
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
              <label for="Name"  class="form-label">상담자 : </label>
             <input name="ask_sign" type="text" value="<%=user_id%>" readonly>
            </div>
           </div>
           
           <div class="row g-3">
            <div class="col-12">
              <label for="Name"  class="form-label">Date : </label>
                <input name="made_date" type="text" value="<%=list.getMade_date()%>" readonly>
              </div>
           </div>
           
        
             
             <input name="ask_status" type="hidden" value="1">
             <br>
            <button type="submit" class="btn btn-success btn-lg">등록</button>
			<button type="reset" onclick="reset()" class="btn btn-light btn-lg">취소</button>
       
	</form>
	<hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="08consultlist.jsp" class="btn btn-outline-secondary" role="button">뒤로</a>
	</div>
	
</main>
</div>
<%@ include file ="01footer.jsp" %>	

</body>
</html>

    