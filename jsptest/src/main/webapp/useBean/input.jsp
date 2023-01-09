<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input!</title>
</head>
<body>
<h2>회원가입폼</h2>
<!-- <form action="beanRequest1.jsp" method="post"> -->
<!-- <form action="beanRequest2.jsp" method="post"> -->
<form action="beanSession1.jsp" method="post">
아이디:<input type=text name="id" ><br>
<!-- 암호:<input type=password name="password" ><br> -->
암호:<input type=password name="pw" ><br>
이름:<input type=text name="name" ><br><!-- 
폰:<input type=tel name="phonenember" ><br> -->
폰:<input type=tel name="phone" ><br>
이메일:<input type="email" name="email" ><br>
<input type="submit" value="가입">
</form>

</body>
</html>