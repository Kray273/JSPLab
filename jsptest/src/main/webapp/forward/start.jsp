<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward_시작화면</title>
</head>
<body>
<%
	String id = request.getParameter("id"); //브라우저 입력으로 자동 인코딩
	String filename="";
	String[] menu = null;
	if (id != null) { 
		if (id.equals("admin") || id.equals("administrator")) {
			filename="admin.jsp";
			menu = new String[3];
			menu[0] = "모든 사용자 정보 조회";
			menu[1] = "회원 강제 탈퇴";
			menu[2] = "상품관리";
		} else {
			filename="user.jsp";
			menu = new String[4];
			menu[0] = "회원가입";
			menu[1] = "상품구매";
			menu[2] = "결제";
			menu[3] = "장바구니 조회";
		}
		
		request.setAttribute("menu", menu);

	}
	else {
// 		out.print("<h1>아이디 입력해 주세요 </h1>");
// 	포워드는 이전출력내용 코드 무시..
	filename="none.jsp";
	}
	%>
	<!-- <jsp:param value="홍길동" name="username"/> 
		 서버에서 값을 던지져 줌으로 인코딩 안됨. 따라서 다음과 같이 인코딩 진행 -->
	<jsp:forward page="<%= filename %>">
		 <jsp:param value="<%=URLEncoder.encode(\"홍길동\")%>" name="username"/>
	</jsp:forward>
	
	
	

</body>
</html>