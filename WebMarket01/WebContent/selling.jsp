<%@page import="java.util.ArrayList"%>
<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<h1 class = "display-3">Delivery list</h1>
</div>	
</div>

<div class="container">
<div class="row" align="center">
<table class="table table-hover">
  <thead>	
	    <tr>
	        <th scope="col">번호</th>
			<th scope="col">구매자</th>
			<th scope="col">구매물품</th>
			<th scope="col">주소</th>
			<th scope="col">전화번호</th>
			<th scope="col">가격</th>
			<th scope="col">구매일</th>
			<th scope="col">상태</th>
	    </tr>
	    </thead>
	  	<%
			ArrayList<DTOdelivery> lists = DAOdelivery.getList();
			String no = "";
			String no2 = "";
	  	    for(DTOdelivery list : lists){
		%>
		
	    <tr>
	      <th scope="row"><%=list.getDid()%></th>
	      <td><%=list.getDmid()%></td>
	      <td><%=list.getDpid()%></td>
	      <td><%=list.getDmaddr()%></td>
	      <td><%=list.getDmtel()%></td>
	      <td><%=list.getDpprice()%></td>
	      <td><%=list.getDdate()%></td>
	      <td>
	      <%
		    if(list.getDstatus().equals("1")){
		    	%><a href="seilingstatus.jsp?did=<%=list.getDid()%>" onclick="return confirm('상태 변경하시겠습니까?');">입금중</a><%
		   } else if(list.getDstatus().equals("2")){
		    	%><a href="seilingstatus.jsp?did=<%=list.getDid()%>" onclick="return confirm('상태 변경하시겠습니까?');">입금완료</a><%
		    } else if(list.getDstatus().equals("3")){
		    	out.print("[배송전]");
		    } else if(list.getDstatus().equals("4")){
		    	no = list.getDid();
		    	out.print("[배송중]");
		    } else if(list.getDstatus().equals("5")){
		    	out.print("[배송완료]");
		    }
		    %>
		    </td>
	    </tr>
		<%		
		}
		%>
	</table>
	  </div>
	   </div>
	   
	
<%@ include file = "footer.jsp" %>	

</body>
</html>

