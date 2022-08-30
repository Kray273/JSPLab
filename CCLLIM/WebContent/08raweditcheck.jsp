<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.*"%>

<%
	String raw_code= null;
	String raw_name = null;
	String raw_amount = null;
	String raw_location = null;
	
	String raw_image = null; 
	byte[] raw_file = null; 
	

	
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	
	List items = sfu.parseRequest(request);
	
	Iterator iter = items.iterator();
	
	while(iter.hasNext()){
		FileItem item = (FileItem)iter.next();
		String name = item.getFieldName();
		
		if(item.isFormField()){
			String value = item.getString("UTF-8");
			if(name.equals("raw_code")){raw_code = value;}
			else if(name.equals("raw_name")){raw_name = value;}
			else if(name.equals("raw_amount")){raw_amount = value;}
			else if(name.equals("raw_location")){raw_location = value;}
		} else{
			if(name.equals("raw_image")){
				raw_image = item.getName();
				raw_file = item.get();
				
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,raw_image,raw_file);	
			}
		}
	}
	
	DAOraw.edit(raw_code, raw_name, raw_amount, raw_image, raw_location);
	
	out.print("<script>alert('수정완료.');</script>");
	out.print("<script>location.href='08rawlist.jsp';</script>");	
%>

    