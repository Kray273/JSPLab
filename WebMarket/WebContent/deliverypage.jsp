<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "DB.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>Buying</title>

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
	<h1 class = "display-3">제품 구매</h1>
</div>	
</div>

<%
	String pno = request.getParameter("pno");
	String pname = request.getParameter("pname");
	String pprice = request.getParameter("pprice");
	
	DTOmember member = DAOmember.memberDetail(mname);
%>

<div class="container">
<div>
<strong> 배송주소</strong><br>
성명(ID) : <%=member.getMname()%><br>
주소 : <%=member.getMaddr()%> <br>
전화번호 : <%=member.getMtel()%><br>
<div>
<p><em>주문일 : <%=LocalDate.now()%></em>
</div>
</div>



<table>
	<tr>
	<th class="text-center">제품명</th> 
	<th class="text-center">제품가격</th> 
	</tr>
	<tr>
	<td class="text-center"><%=pname%></td>
	<td class="text-center"><%=pprice%>원</td>
</table>
<br>
<div><%=mname%>님 정말 구매를 원하십니까?</div>
<br>
<br>
</div>
	
	
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end"></label>
		<div class="col-sm-7 ">
			<a href="productlist.jsp" class="btn btn-secondary" role="button">취소 &raquo;</a>		
			<a href="deliverycheck.jsp?pno=<%=pno%>&pname=<%=pname %>&pprice=<%=pprice %>" class="btn btn-danger" role="button">주문완료 &raquo;</a>		
		</div>	
	</div>


<%@ include file = "footer.jsp" %>	

</body>
</html>