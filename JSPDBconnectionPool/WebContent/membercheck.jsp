<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="DB.*" %>

<% 
	request.setCharacterEncoding("utf-8");
	String mname = request.getParameter("mname");
	String mtel = request.getParameter("mtel");
			
	//DAOmember m = new DAOmember();
	//m.join(mname, mtel);
	
	
	//한줄로 요약, static을 이용해 객체상관없이 보냄
	DAOmember.join(mname, mtel);
	

%>