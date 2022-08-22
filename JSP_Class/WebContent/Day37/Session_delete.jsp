<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션삭제</title>
</head>
<body>
<%
	//세션 삭제전 세션 정보 확인
	out.print("세션생성시간 = " + session.getCreationTime()+"초<br>");
	out.print("마지막접근시간 = " + session.getLastAccessedTime()+"초<br>");
	out.print("세션유지시간 = " + (session.getLastAccessedTime()-session.getCreationTime())+"초<br>");
	out.print("세션유효시간 = " + session.getMaxInactiveInterval()+"초<br>");
	//세션 정보 삭제
	session.removeAttribute("id");
	session.removeAttribute("name");
	
	out.print("세션 정보 삭제 완료");
	
%>

<p><a href="Session_check.jsp">세션 확인</a></p>

</body>
</html>