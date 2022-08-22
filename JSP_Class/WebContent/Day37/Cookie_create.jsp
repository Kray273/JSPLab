<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키생성</title>

	
</head>
<body>
<%Cookie cookie = new Cookie("id","admin");
	cookie.setMaxAge(300); // 초단위 5분
	
	response.addCookie(cookie);
	
	out.print("쿠키 생성 완료");
 	%>
 <Br>
<p><a href="Cookie_check.jsp">[쿠키 확인]</a>
</body>
</html>