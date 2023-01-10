<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL_Output</title>
</head>
<body>

<h3>${param.id}님 </h3>
<h5>${param.pw}라는 암호를 입력하셨습니다.</h5>
<h5>==================</h5>
<h3>점심주문 목록</h3>
<c:set var="lunch" value="${paramValues.lunch}"/>
<c:forEach items="${lunch}" var="lunch">
<h5>${lunch}</h5>
</c:forEach>
<h5>==================</h5>

</body>
</html>