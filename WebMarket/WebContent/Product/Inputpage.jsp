<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>Product_INPUT</title>
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
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Product</h1>
</div>	
</div>

<div class="container">
<form action="Inputcheck.jsp" method="post" enctype="multipart/form-data">

	<div class="form-group row">
		<label class="col-sm-2">제품ID</label>
		<div class="col-sm-3">
		<textarea name="pid" rows="1" cols="40" class="form-control" placeholder="ID를 입력하세요"></textarea>
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">제품이름</label>
		<div class="col-sm-3">
		<textarea name="pname" rows="1" cols="40" class="form-control" placeholder="이름을 입력하세요"></textarea>
		</div>
	</div>
		
	<div class="form-group row">
		<label class="col-sm-2">가격</label>
		<div class="col-sm-3">
			<textarea name="pprice" rows="1" cols="40"  class="form-control" placeholder="가격를 입력하세요"></textarea>
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">상세설명</label>
		<div class="col-sm-3">
		<textarea id="summernote" class="col-sm-3" name="pdesc"></textarea>
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
	
	<div class="form-group row">
		<label class="col-sm-2" for="inputGroupFile02">Image1</label>
		 <div class="col-sm-3">
		 	<input type="file" name="image1" class="form-control " id="inputGroupFile02">
		 </div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2" for="inputGroupFile02">Image2</label>
		 <div class="col-sm-3">
		 	<input type="file" name="image2" class="form-control " id="inputGroupFile02">
		 </div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2" for="inputGroupFile02">Image3</label>
		 <div class="col-sm-3">
		 	<input type="file" name="image3" class="form-control " id="inputGroupFile02">
		 </div>
	</div>

	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" class="btn btn-primary" value="등록">
			<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
		</div>	
	</div>
	
	
	<br>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="Iist.jsp" class="btn btn-outline-secondary" role="button">목록보기</a>
	</div>
	
  
	<br>
</form>
</div>

	
<%@ include file = "../footer.jsp" %>	
</body>
</html>