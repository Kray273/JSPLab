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

<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">회원 정보 수정</p>
</div>	
</div>

<%
	
    DTOuser list = DAOuser.detail(user_id);
%>

<div class="container">
  <main>
      <div class="col-md-7 col-lg-8"> 
      <form action="03myinfoeditcheck.jsp" method="post" >
          <div class="row g-3">
          
            <div class="col-12">
              <label for="Name"  class="form-label">ID</label>
              <input type="text" name="user_id" class="form-control" id="firstName" value="<%=list.getUser_id()%>" required readonly>
              <div class="invalid-feedback">
                Valid Your ID is required.
              </div>
            </div>
 
            <div class="col-12">
              <label for="Name"  class="form-label">전화번호</label>
              <input type="text" name="user_tel" class="form-control" id="firstName" placeholder="010-0000-0000" value="<%=list.getUser_tel()%>" required>
              <div class="invalid-feedback">
                Valid Your digit is required.
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" name="user_email" id="email" placeholder="you@example.com" value="<%=list.getUser_email()%>">
              <div class="invalid-feedback">
                Please enter a valid email address for updates.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" name="user_addr" value="<%=list.getUser_addr()%>" id="address" placeholder="서울시 종로구 율곡로 000-00 0층" required>
              <div class="invalid-feedback">
                Please enter your address.
              </div>
            </div>
            
            
          <hr class="my-4">
          <button class="w-50 btn btn-primary btn-success" type="submit">수정</button>
          <button class="w-50 btn btn-primary btn-secondary" type="reset" onclick="reset()">취소</button>
        </div>
        </form>
      </div>
      
      <hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="03myinfo.jsp" class="btn btn-outline-secondary" role="button">목록보기</a>
	</div>
      
  </main>
</div>	

<%@ include file ="01footer.jsp" %>	

</body>
</html> 