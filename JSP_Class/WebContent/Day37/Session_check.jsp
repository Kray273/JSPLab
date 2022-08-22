<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션확인</title>
</head>
<body>
세션 Id : <%=session.getAttribute("id")%><br>
세션 Name : <%=session.getAttribute("name")%><br>


<p><a href="Session_delete.jsp">세션 삭제</a></p>
<p><a href="Session_create.jsp">세션 생성</a></p>
</body>
</html>