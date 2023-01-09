<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작화면</title>
</head>
<body>
<h3> 나의 홈페이지 메뉴</h3>
<ul>
	<li><a href="loginInform.jsp">로그인 메뉴</a>
	<li><a href="boardList.jsp">게시판리스트 메뉴</a>
</ul>
<jsp:include page="bottom.jsp">
	<jsp:param value="<%=request.getRequestURI()%>" name="filename"/>
</jsp:include>

</body>
</html>