<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL_Output</title>
</head>
<body>

<h3>${param.id}님 </h3>
<h5>${param.pw}라는 암호를 입력하셨습니다.</h5>
<h5>==================</h5>
<h3>점심주문 목록</h3>
<h5>${paramValues.lunch[0]}</h5>
<h5>${!empty paramValues.lunch[1]? paramValues.lunch[1]:"없음"}</h5>
<h5>${!empty paramValues.lunch[2]? paramValues.lunch[2]:"없음"}</h5>
<h5>${!empty paramValues.lunch[3]? paramValues.lunch[3]:"없음"}</h5>
<h5>${!empty paramValues.lunch[4]? paramValues.lunch[4]:"없음"}</h5>
<h5>==================</h5>

</body>
</html>