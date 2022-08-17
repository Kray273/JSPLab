<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
	<h1>Member Input</h1> 
</div>

<div>
<form action="membercheck.jsp" method="post">
	<div> 
	 <label>Name</label>
	 <textarea name="mname" rows="1" cols="17" placeholder="이름을 입력하세요" ></textarea>
	</div>
	
	<div> 
	 <label>Tel</label>
	 <textarea name="mtel" rows="1" cols="20" placeholder="전화번호를 입력하세요" ></textarea>
	</div>
	
	<div>
	<input type="submit" value="등록">
	<input type="reset" value="취소" onclick="reset()">
	</div>
</form>
</div>


</body>
</html>