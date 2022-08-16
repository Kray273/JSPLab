<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! //선언문에서 함수 작성
	int sum(int a, int b){
		return a+b;
	}
	%>
	
	<% //스크립틀릿으로 함수를 호출
		out.print("2+3 = " + sum(2,3));
	%>
</body>
</html>