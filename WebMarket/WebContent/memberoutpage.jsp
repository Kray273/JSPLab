<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Memberout</title>
</head>
<body>
<%@ include file = "header.jsp" %>
<%
	mname = (String)session.getAttribute("mname");

	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
%> 

<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		Withdraw from a Member
	</h1>
</div>	
</div>
<% 
	DTOmember list = DAOmember.memberDetail(mname);
 %>
<div class="container"  style="max-width: 330px">

<main class="form-signin">
  <form action="memberoutcheck.jsp">
    <div class="form-floating">
    	<h4>정말로 탈퇴를 원하십니까?</h4>
    </div>
    <br>
    <div class="form-floating">
      <input type="password" class="form-control" name="mpass" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">원하시면 비밀번호를 입력해주세요.</label>
    </div>
     <br>
    <button class="w-100 btn btn-lg btn-primary" type="submit">회원탈퇴</button>
     <p class="mt-1 mb-3 text-muted">&copy; 2022–2022</p>
  </form>
</main>


</div>

<%@ include file = "footer.jsp" %>
</body>
</html>