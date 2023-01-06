<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
<!-- exception 내장객체 - 오류정보객체 -->
<h3>=======오류 발생파일명=======</h3>
<%=request.getAttribute("file")%>에서 문제가 발생했습니다.
<h3>=======오류 toString()=======</h3>
<%=exception %>
<h3>=======오류 getMessage()=======</h3>
<%=exception.getMessage()%>
<h3>오류 경로 printStackTrace() 콘솔출력 </h3>
<% exception.printStackTrace(); %>
</body>
</html>