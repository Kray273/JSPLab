<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scripting Tag</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	
	<%! //선언문 declaration_선언문 태그를 이용하여 변수 선언
		int count = 3; 
		String makeItLower(String data){
		return data.toLowerCase();
		}
	%>
	
	<% //스크립틀릿 Scriptlet_자바 일반코드 작성
		for(int i = 1; i < count; i++){
			out.print("Java Server Pages" + 1 + "<br>");
		}
	%>

	<%= //표현문 Expression_매서드를 호출하여 그 결과를 문자열 형태로 출력
		// 표현문은 ;를 쓰지 않음!
		makeItLower("Helo world")
	%>
</body>
</html>