<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="member.*" %>


<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Member_Output</title>
</head>
<body>
<%@ include file = "../header.jsp" %>

<% 
	Connection conn = null;
	conn = DBmember.getConnection();
	PreparedStatement pstmt = null;
	
	String sql = "SELECT * FROM member";
	pstmt = conn.prepareStatement(sql);
	pstmt.executeQuery();

	ResultSet rset = null;
	rset = pstmt.executeQuery();
	
%>
<div class="container">
	<div class="alert alert-dark" role="alert">
	  Member
	</div>
</div>

<div class="container">
<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">이름</th>
      <th scope="col">전화번호</th>
      <th scope="col">등급</th>
      <th scope="col">가입일</th>
    </tr>
  </thead>
  
  <tbody>
	<%
	  //rset.next() : 다음 데이터가 있는지 확인하는 함수
	  while(rset.next()){
		  String mno = rset.getString("mno");
		  String mname = rset.getString("mname");
		  String mtel = rset.getString("mtel");
		  String mlevel = rset.getString("mlevel");
		  String mdate = rset.getString("mdate");
	%>
	<tr>
      <td ><%=mno%></td>
      <td class="table-light"><%=mname%></td>
      <td><%=mtel%></td>
      <td class="table-light"><%=mlevel%></td>
      <td><%=mdate%></td>
    </tr>
	<% mno+=1;
	} %>
  </tbody>
</table>
</div>

<%
	rset.close();	
	pstmt.close();
	conn.close();
%>

	
<%@ include file = "../footer.jsp" %>
<!-- import 충돌로 인한 오류로 풋터에 더 디테일하게 기능을 임폴트해야함. -->
</body>
</html>