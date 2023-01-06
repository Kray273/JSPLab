<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Output 구구단</title>
<!-- <script src="/jpstest/js/jquery.3.6.1.min.js"></script>
<script src="js/jquery.3.6.1.min.js"></script>-->
<!-- 현재폴더 기준으로 -->
<script src="<%=request.getContextPath()%>/js/jquery-3.6.1.min.js"></script>
<script>
	$(document).ready(function(){
		//홀수줄 - 바탕 색상 pink
		$('tr:even').css("background-color","pink");
		//짝수줄 - 바탕 색상 silver
		$('tr:odd').css("background-color","silver");
	});
</script>
<style type="text/css">
	/* 테이블 가운데 정렬 */
	table{ margin:auto;}
	/* 선 색상 파랑색 */
	td, table{border : 2px solid blue;}
</style>

</head>
<body>
<h1>구구단을 외자</h1>

<% 
	// get/post 동일 로직 처리
	if(request.getMethod().equals("GET") && request.getParameter("id").equals("admin")){
		String start2 = request.getParameter("start");
		String end2 = request.getParameter("end");
		int start = 0;
		int end = 0;
		if(start2 != null && !start2.equals("")){
			start = Integer.parseInt(start2);
		}
		if(end2 != null && !end2.equals("")){
			end = Integer.parseInt(end2);
		}
		%>
<table>  
		<% for(int j = 1; j <= 9; j++){ %>
		<tr>
		<% for(int i = start; i<=end; i++){ %>
		<td> <%=i%> * <%=j%> = <%=i*j%> <td>
			<%}%>
			</tr>
		<%}%>
		
		</table>
	<%} else{ %>
		<h3>Post방식은 지원하지 않습니다.<h3>
	<% } %>
	
<h5><a href="input.jsp?id=admin"> 구구단 다시 외기</a></h5>
</body>
</html>