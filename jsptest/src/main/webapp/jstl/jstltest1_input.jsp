<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL_Input</title>
</head>
<body>
<form action="jstltest1.jsp">
	아이디 입력 : <input type="text" name="id"><br>
	암호 입력 : <input type="password" name="id"><br>
	<select name="lunch" multiple>
		<option selected>한식</option>
		<option>중식</option>
		<option>일식</option>
		<option>양식</option>
		<option>동남아식</option>
	</select> 
<input type="submit" value="주문">
</form>
</body>
</html>