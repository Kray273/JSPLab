<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input 구구단</title>
</head>
<body>
<h1>어떤? 구구단을 외지?</h1>
<form action="output.jsp" method="get">
<table border="3">
<tr>
	<th><label for="start">시작단</label></th>
	<td><input type="number" id="start" name="start" value="2"></td>
</tr>
<tr>
	<th><label for="end">종료단</label></th>
	<td><input type="number" id="end" name="end"  placeholder="시작단보다 커야합니다." value="9"></td>
</tr>
<tr>
	<th><label for="id">관리자 아이디</label></th>
	<td><input type="text" id="id" name="id" value="<%=request.getParameter("id")%>"></td>
</tr>
<tr align="center">
	<td colspan="2"><input type="submit" value="Go!">  <input type="reset" value="Back!"></td>
</tr>
</table>
</form>
</body>
</html>