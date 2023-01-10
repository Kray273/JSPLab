<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include/Forward</title>
<script src="${pageContext.request.contextPath}/js/jquery-3.6.1.min.js" ></script>
<script>
$(document).ready(function(){

});
</script>
</head>
<body>
<!-- include/forward  -->
<!-- url생성 -->
<c:url var="mypage" value="http://localhost:8081/jsptest/jstl/loginage.jsp"/>

<!-- jsp:forward 1)usl최초요정 jsp불변, 2) 같은 서버 같은 어플리케이션 파일 가능 -->
<%-- <c:redirect url="${mypage}">
	<c:param name="name" value="왕의서진"/>
	<c:param name="age" value="17"/>
</c:redirect> --%>

<!-- jsp:include  -->
<c:import url="${mypage}">
	<c:param name="name" value="왕의서진"/>
	<c:param name="age" value="22"/>
</c:import>

<h1>import한 직후입니다.</h1>
</body>
</html>