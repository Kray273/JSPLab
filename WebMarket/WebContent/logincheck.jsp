<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="DB.*"%>

<%
	request.setCharacterEncoding("utf-8");

 	String mname = request.getParameter("mname");
 	String mpass = request.getParameter("mpass");

	int result = DAOmember.login(mname, mpass);
	
	if (result == 1 ){
		//로그인 성공시 세션 넣기
		session.setAttribute("mname",mname);
		
		out.print("<script>alert('로그인 성공, 제품목록으로 이동');</script>");
		out.print("<script>location.href='Productlist.jsp';</script>");
	} else if(result == 2){
		out.print("<script>alert('비밀번호 불일치, 재로그인');</script>");
		out.print("<script>location.href='login.jsp';</script>");
	} else{
		out.print("<script>alert('회원가입이 필요합니다.');</script>");
		out.print("<script>location.href='memberinputpage.jsp';</script>");
	}
	
%>