<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어디 다 드루와봐</title>
</head>
<body>
<% 
// 서버 시작 후 최초 요청
int count = 0;
if(application.getAttribute("count") ==null){
	count = 1;	
	application.setAttribute("count",count);
}
//서버 시작 후 2번째 요청 이후
else{ 
	count = (Integer)application.getAttribute("count") + 1;
	application.setAttribute("count",count);	
}
 %>
 
 <h1> 서버 시작 후 <%=count%>번째 방문자입니다.</h1>

</body>
</html>