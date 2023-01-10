<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어(EL)1</title>
</head>
<body>
<h6>http://localhost:8081/jsptest/el/eltest1.jsp?name=test</h6>
<% if (request.getParameter("name") != null){ %>
<h1><%=request.getParameter("name").length() %></h1>
<% } %>
<h1>${!empty param.name? param.name.length() :"없다." }</h1>
<!-- el은 null일시 공백으로 표현, 에러를 발생시키지 않음.  -->


<h6> 표현 언어에서 데이터 출력하기</h6>
<h6> \${100}의 결과는 int : ${100}</h6><!--\를 통해 el구조 무효화  -->
<h6>double : ${3.14}</h6>
<h6>boolean : ${false}</h6>
<h6>String : ${"안녕"}</h6>

<%-- <h6>${"안녕" + "하세요"}</h6> 문자열끼리 결합이 불가능하다.--%>
<h6>${"안녕" += "하세요"}</h6><!-- 옆과 같은 방식으로 출력  -->
<%-- <h6>${"안녕" + 100}</h6>  문자와 숫자형의 결합은 불가 --%>
<h6>${100 + 100}</h6> <!-- 숫자는 가능 -->

<h6>${reqestScope.dto}</h6>
<%-- getter용 <jsp:useBean id="dto" class="dto.MemberDTO" scope="request"/>와 동일--%>
<h6>${sessionScope.dto}</h6>
<h6>${applicationScope.dto}</h6>

</body>
</html>