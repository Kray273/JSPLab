<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScriptTag</title>
</head>
<body>
<%  // 스크립틀릿
// jsp 서블릿 변환시_jspService()문장 간주
// jsp 서블릿 변환시_jspService() 지역변수로 간주
	String msg = "콘솔출력";
	System.out.println(msg);

%>

<%!  // 선언부 
	String msg2 = "맴버변수"; //선언부에서 사용시 전역변수 간주
	int multiply(int a, int b){
	System.out.println(msg2 +" multiply :" + a*b); 
	return a*b;}	
%>

<% multiply(10,20); %>

<h1>표현부 결과 : <%=multiply(10,20)%></h1>
</body>
</html>