<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3> 이메일 전송 </h3>
<form action="sendprocess.jsp" method="post">
보내는 사람 : <input type ="text" name="from" value="enek1005@naver.com"><br>
받는 사람 :<input type ="text" name="to" value="stoneofko@gmail.com" ><br>
제목 : <input type ="text" name="subject" value="test"><br>
종류 :  <input type ="radio" name="format" value="text" checked>txt 
	  <input type ="radio" name="format" value="html" >html <br>
내용 : <textarea type ="text" name="content" cols="60" rows="10" >Go</textarea><br>
전송단추: <button type ="submit">전송하기</button><br>
</form>

</body>
</html>