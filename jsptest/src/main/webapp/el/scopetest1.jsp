<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScopeTest1</title>
</head>
<body>
<%
//jsp태스 값 정의 -- el출력
String b = "jsp만의 변수";
pageContext.setAttribute("a","pageContext공유");
request.setAttribute("a2","request공유");
session.setAttribute("a3","session공유");
application.setAttribute("a4","application공유");
request.setAttribute("a","request공유");
session.setAttribute("a","session공유");
application.setAttribute("a","application공유");
%>
jsp b출력 : <%=b %><br>
jsp a출력 : <%= pageContext.getAttribute("a") %><br>
jsp a2출력 : <%= request.getAttribute("a2") %><br>
jsp a3출력 : <%= session.getAttribute("a3") %><br>
jsp a4출력 : <%= application.getAttribute("a4") %><br>
<br>
el b출력 : ${b?b:"없는변수취급"}<br>
el a출력 : ${a}<br>
el a2출력 : ${a2}<br>
el a3출력 : ${a3}<br>
el a4출력 : ${a4}<br>
<%=request.getContextPath() %>
<a href="${pageContext.request.contextPath}/el/scopetest2.jsp">링크이동</a>

<%-- <jsp:forward page="scopetest2.jsp"></jsp:forward>
 --%>
</body>
</html>