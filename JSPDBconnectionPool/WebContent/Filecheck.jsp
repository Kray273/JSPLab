
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.DAOborad"%>


<%
	String title = null;
	String content = null;
	String iname = null; //사진은 이름과 내용 2가지 필요
	byte[] ifile = null; // 자료형은 배열로 설정
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	//객체를 받아 List를 만들어줌
	List items = sfu.parseRequest(request);
	//순서가 없는 LIst에 순서를 만듦
	Iterator iter = items.iterator();
	//while문을 통해 하나씩 형을 만듫
	while(iter.hasNext()){
		FileItem item = (FileItem)iter.next();
		String name = item.getFieldName();// 키값 즉 이름을 추출
		
		if(item.isFormField()){
	//제목, 내용 등 사진을 제외한 나머지 항목들을 차례대로 추출
	String value = item.getString("UTF-8");
	if(name.equals("title")){
		title = value;
	} else if(name.equals("content")){
		content = value;
	}	
		} else{
	//사진에 관련된 즉 사진이름과 사진파일 추출
	if(name.equals("image")){
		iname = item.getName();
		ifile = item.get();
		
		String root = application.getRealPath(java.io.File.separator);
		FileUtil.saveImage(root,iname,ifile);		
	}
		}
	}
	
	DAOborad.boardinsert(title, content, iname);
%>

<%-- 제목 : <%=title%><br>
내용 : <%=content%><br>
파일명 : <%=iname%><br>
파일내용 : <%=ifile%><br> --%>

<%-- 
title : <%=request.getParameter("title")%><br>
content : <%=request.getParameter("content")%><br>
file:<%=request.getParameter("image")%><br>

<%=request.getContentType()%>
<%=request.getContentLength()%> --%>