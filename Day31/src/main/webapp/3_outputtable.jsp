<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Day31.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AccessDB Include </title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<% 
// Class 호출로 중복 제거
	
//class 호출
	Connection conn = null;
	conn = DbConnClose.getConnection();

// 4.Statement Object	
	PreparedStatement pstmt = null;
	
	String sql = "SELECT * FROM prof";

	pstmt = conn.prepareStatement(sql);
	
// 5.SQL Execute 넘어오는게 있으면 Query
	pstmt.executeQuery();

// 6. ResultSet Object
	ResultSet rset = null;
	rset = pstmt.executeQuery();
%>
<div class="container">
	<div class="alert alert-dark" role="alert">
	  교수 정보 출력.
	</div>
</div>
</div>

<div class="container">
<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">번호</th>
      <th scope="col">이름</th>
      <th scope="col">전공</th>
      <th scope="col">모바일</th>
    </tr>

  </thead>
  <tbody>
	<%
		int i =1;
	  //rset.next() : 다음 데이터가 있는지 확인하는 함수
	  while(rset.next()){
		  String pno = rset.getString("pno");
		  String pname = rset.getString("pname");
		  String pdepar = rset.getString("pdepar");
		  String pmobile = rset.getString("pmobile");
	%>
	<tr>
      <th scope="row" class="table-light"><%=i%></th>
      <td ><%=pno%></td>
      <td class="table-light"><%=pname%></td>
      <td><%=pdepar%></td>
      <td class="table-light"><%=pmobile%></td>
    </tr>
	<% i++;
	} %>
  </tbody>
</table>
</div>

<%
//7. Connection Close_역순으로!
	rset.close();	
	pstmt.close();
	conn.close();
%>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>