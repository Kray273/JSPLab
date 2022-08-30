<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CCLLIM</title>
</head>
<body>
<%
	//세션 정보 삭제
	session.removeAttribute("user_id");
	session.removeAttribute("user_level");

		
	out.println("<script>alert('로그아웃 하셨습니다.');</script>");
	out.println("<script>location.href='01main.jsp'</script>");
%>

</body>
</html>

    