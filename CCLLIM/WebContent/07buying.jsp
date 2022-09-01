<%@page import="java.time.LocalDate"%>
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
	   	
	    if (user_id == null) {
			out.println("<script>alert('로그인이 필요합니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		}
%>
<%	    
	String no = request.getParameter("no");
    DTOproduct list = DAOproduct.detail(no);
	
	String img1 = list.getProduct_img1();
	String imgstr1 = "";
	String img2 = list.getProduct_img2();
	String imgstr2 = "";
	String img3 = list.getProduct_img3();
	String imgstr3 = "";
	if(img1 != null){
		imgstr1 ="images/" + img1;
	} 
	if(img2 != null){
		imgstr2 ="images/" + img2;
	}
	if(img3 != null){
		imgstr3 ="images/" + img3;
	} 
%>
<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">제품구매</p>
</div>	
</div>
<br><br>
<div class="container">

   <hr class="featurette-divider">
	
    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">제품명 : <%=list.getProduct_name()%></h2>
         <span class="text-muted">설명 : <%=list.getProduct_desc()%></span>
        <p class="lead">가격 : <%=list.getProduct_price()%>Won</p>
      </div>
     <div class="col-md-5">
        <img src="<%=imgstr1%>" width="500" height="500" ><rect width="100%" height="100%" fill="#eee"/>
      </div>
    </div>
    <hr class="featurette-divider">
<%DTOuser m = DAOuser.detail(user_id); %>
<div>
<strong> 배송주소</strong><br>
성명(ID) : <%=m.getUser_id()%><br>
주소 : <%=m.getUser_addr()%> <br>
전화번호 : <%=m.getUser_tel()%><br>
<div>
<p><em>주문일 : <%=LocalDate.now()%></em>
</div>
</div>
    <hr class="featurette-divider">
    <div class="text-center">
	<span class="text-muted"><%=m.getUser_id()%>님 정말 구매를 원하십니까?</span></div>
    <hr class="featurette-divider">
	<br>
	<div class="d-grid gap-2 col-6 mx-auto">
	<a href="07buyingcheck.jsp?pc=<%=list.getProduct_code()%>&pn=<%=list.getProduct_name()%>&ui=<%=m.getUser_id()%>&ua=<%=m.getUser_addr()%>&ut=<%=m.getUser_tel()%>&ue=<%=m.getUser_email()%>" class="btn btn-outline-success" role="button">주문완료 &raquo;</a>		
	<a href="javascript:window.history.back();" class="btn btn-light" role="button">취소 &raquo;</a>		
			
	</div>
	<br>
</div>


		
<%@ include file ="01footer.jsp" %>	
	
</body>
</html>

    