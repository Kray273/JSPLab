<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.*"%>

<%

	String dpid = request.getParameter("pno"); 
	String dpname = request.getParameter("pname"); 
	String dpprice = request.getParameter("pprice");
	
	String mname = (String)session.getAttribute("mname");
	DTOmember member = DAOmember.memberDetail(mname);
	
	String dmid = member.getMno();
	String dmaddr = member.getMaddr();
	String dmtel = member.getMtel();
	
	DAOdelivery.insert(dpid,dmid,dmaddr,dmtel,dpname,dpprice);
	
	//response.sendRedirect("boardlist.jsp");
	
%>

