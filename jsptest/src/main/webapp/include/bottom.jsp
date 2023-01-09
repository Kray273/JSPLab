<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bottom</title>
</head>
<body>

<img alt="img" src="../images/html5.jpg">
<img alt="img" src="<%=request.getContextPath()%>/images/html5.jpg">
<h3> 연락처 - 이메일로 문의하세요.</h3>
<h3> 나는 나는 - BottomPage입니다.</h3>
<% if(request.getParameter("id") != null){ %>
<h1>전송 받은 Param : <%=request.getParameter("id") %></h1>
<% } %>
<h1><%=request.getParameter("filename") %></h1>

<% if(request.getAttribute("member") != null ){ %>
<h1>전송 받은 객체 : <%=request.getAttribute("member") %></h1>
<% } %>
</body>
</html>