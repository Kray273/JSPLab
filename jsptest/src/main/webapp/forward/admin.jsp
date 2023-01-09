<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
</head>
<body>
<h1> admin.jsp입니다.</h1>
<h2> 관리자 메뉴는 다음과 같습니다.</h2>
http://localhost:8081/jsptest/forward/start.jsp<br>
http://localhost:8081/jsptest/forward/start.jsp?id=admin<br>
http://localhost:8081/jsptest/forward/start.jsp?id=user

<% String[] menu = (String[])request.getAttribute("menu");
	for(String m : menu){
		out.println("<h3>"+ m +"</h3>");
	}

%>

</body>
</html>