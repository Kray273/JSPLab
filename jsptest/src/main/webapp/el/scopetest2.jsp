<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScopeTest2</title>
</head>
<body>
<h1>ScopeTest2</h1>
<%-- jsp b출력 : <%=b %><br>  출력 안됨 --%>
jsp a출력 : <%= pageContext.getAttribute("a") %><br>
jsp a2출력 : <%= request.getAttribute("a2") %><br>
jsp a3출력 : <%= session.getAttribute("a3") %><br>
jsp a4출력 : <%= application.getAttribute("a4") %><br>
jsp a출력(request) : <%= request.getAttribute("a") %><br>
jsp a출력(session) : <%= session.getAttribute("a") %><br>
jsp a출력(application) : <%= application.getAttribute("a") %><br>
<br>
el a출력 : ${a}<br>
el a2출력 : ${a2}<br>
el a3출력 : ${a3}<br>
el a4출력 : ${a4}<br>
el a(pageContext)출력 : ${pageScope.a}<br>
el a(request)출력 : ${requestScope.a}<br>
el a(session)출력 : ${sessionScope.a}<br>
el a(application)출력 : ${applicationScope.a}<br>
<!-- 
	el 전달 변수 해석 출력
	pageScope -> requestScope -> sessionScope -> applicationScope  
-->

<br>
el 컨텐스트명 출력 : ${pageContext.request.contextPath}<br>
el jap명 출력 : ${pageContext.request.requestURI}<br>

</body>
</html>