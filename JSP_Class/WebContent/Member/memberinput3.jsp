<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.DAOmember2"%>


<%
	String mname= null;
	String mtel = null;
	String iname = null; 
	byte[] ifile = null; 
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	
	List items = sfu.parseRequest(request);
	
	Iterator iter = items.iterator();
	
	while(iter.hasNext()){
		FileItem item = (FileItem)iter.next();
		String name = item.getFieldName();
		
		if(item.isFormField()){
			String value = item.getString("UTF-8");
			if(name.equals("mname")){
				mname = value;
			} else if(name.equals("mtel")){
				mtel = value;
			}	
		} else{
			if(name.equals("image")){
				iname = item.getName();
				ifile = item.get();
				
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,iname,ifile);		
			}
		}
	}
	
	DAOmember2.memberinsert(mname, mtel, iname);
	
	response.sendRedirect("memberlist.jsp");
	
%>
