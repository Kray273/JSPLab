<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>Board_Input3</title>


</head>
<body>
<%@ include file = "../header.jsp" %>



<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Board</h1>
</div>	
</div>

<div class="container">
<form action="boardinput3.jsp" method="post" enctype="multipart/form-data">

	<div class="form-group row">
		<label class="col-sm-2">Title</label>
		<div class="col-sm-3">
		<textarea name="title" rows="1" cols="40" class="form-control" placeholder="제목을 입력하세요"></textarea>
		</div>
	</div>
		
	<div class="form-group row">
		<label class="col-sm-2">content</label>
		<div class="col-sm-3">
			<textarea name="content" rows="3" cols="40"  class="form-control" placeholder="내용을 입력하세요"></textarea>
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2" for="inputGroupFile02">Upload</label>
		 <div class="col-sm-3">
		 	<input type="file" name="image" class="form-control " id="inputGroupFile02">
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
		<a href="boardlist.jsp" class="btn btn-outline-secondary" role="button">목록보기</a>
	</div>
	<br>

</form>
</div>

	
<%@ include file = "../footer.jsp" %>	

</body>
</html>