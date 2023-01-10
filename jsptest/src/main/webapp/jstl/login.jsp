<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login!</title>
</head>
<body>
<form action="loginage.jsp">
	이름 입력: <input type="text" name="name" ><br>
	나이 입력: <input type="text" name="age" pattern="[0-9]+"><br>
	<input type="submit" value="성인인증" /> 
</form>
</body>
</html>