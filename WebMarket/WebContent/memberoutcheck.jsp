<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="DB.*"%>


<%
	request.setCharacterEncoding("utf-8");

	String mname = (String)session.getAttribute("mname");
 	String mpass = request.getParameter("mpass");

 	int result = DAOmember.login(mname, mpass);
	
	if (result == 1 ){
		//탈퇴성공	
		out.print("<script>alert('탈퇴 성공, 이용해 주셔서 감사합니다.');</script>");
		int result2 = DAOmember.memberout(mname,mpass);
		if(result2 == 1){
			session.removeAttribute("mname");
			out.print("<script>location.href='welcome.jsp';</script>");
		} else{
			out.print("<script>alert('회원탈퇴실패,다시 시도하세요.');</script>");
			out.print("<script>location.href='memberoutpage.jsp';</script>");
		}
	} else{
		out.print("<script>alert('비밀번호가 일치하지 않습니다');</script>");
		out.print("<script>location.href='memberoutpage.jsp';</script>");
	}
	
%>