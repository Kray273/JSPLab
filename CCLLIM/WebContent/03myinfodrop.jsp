<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CCLLIM</title>
</head>
<body>


<%@ include file="01header.jsp" %>
<%
	    user_id = (String)session.getAttribute("user_id");
	    level = (String)session.getAttribute("user_level");
    	    	
	    if (user_id == null) {
			out.println("<script>alert('로그인이 필요합니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} 
%>

<br><br><br><br><br><br>
<div class="container"  style="max-width: 330px">

<main class="form-signin">
  <form action="03myinfodropcheck.jsp">
    <div class="form-floating">
    	<h4>정말로 탈퇴를 원하십니까?</h4>
    </div>
    <br>
    <div class="form-floating">
      <input type="password" class="form-control" name="user_pw" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">원하시면 비밀번호를 입력해주세요.</label>
    </div>
     <br>
    <button class="w-100 btn btn-lg btn-primary" type="submit">회원탈퇴</button>
     <p class="mt-1 mb-3 text-muted">&copy; 2022–2022</p>
  </form>
</main>
</div>
<br><br><br><br><br><br>
<%@ include file ="01footer.jsp" %>	

</body>
</html> 