<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록</title>


</head>
<body>
<!-- 주석 -->
	<!-- CSS only -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">

	<div class="container bg-warning shadow mx-auto mt-5 p-5 w-75">
		<h2>My Todo App</h2>
		<hr>
		
		<form action="4_inputinclude.jsp">
		<div class="input-group">
			<input name="item" class="form-control" type="text"
				placeholder="할일을 입력하세요..">
			<button type="submit" class="btn btn-primary">
			방명록 등록</button>
		</form>
			<hr>
		</div>
			<ul id="todolist"></ul>

	</div>


</body>
</html>