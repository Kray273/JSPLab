<%@ page contentType="text/html; charset=UTF-8"
   buffer="8kb" autoFlush="true"
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oute....</title>
</head>
<body>
<h3>버퍼크기 : <%=out.getRemaining() %></h3>
<h3>자바문장 실행 결과와 html태그를 모아서</h3>
<h3>응답 내용으로 만들고 서버 내부 버퍼에 저장합니다.(아직 전송 전) - 한번에 전송</h3>
<%= Integer.parseInt(request.getParameter("name"))%>

<h3>예외 발생시 취소합니다.</h3>
<h3>버퍼크기 : <%=out.getRemaining() %></h3>
버퍼가 가득차면 autoFlush()를 통해 자동으로 비움.
</body>
</html>