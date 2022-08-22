<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.DAOproduct"%>


<%
	String pid= null;
	String pname = null;
	String pprice = null; 
	String pdesc = null;
	String iname1 = null; 
	byte[] ifile1 = null; 
	String iname2 = null; 
	byte[] ifile2 = null; 
	String iname3 = null; 
	byte[] ifile3 = null; 
	 
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	
	List items = sfu.parseRequest(request);
	
	Iterator iter = items.iterator();
	
	while(iter.hasNext()){
		FileItem item = (FileItem)iter.next();
		String name = item.getFieldName();
		
		if(item.isFormField()){
			String value = item.getString("UTF-8");
			if(name.equals("pid")){
				pid = value;
			} else if(name.equals("pname")){
				pname = value;
			} else if(name.equals("pprice")){
				pprice = value;
			} else if(name.equals("pdesc")){
				pdesc = value;
			}	
		} else{
			if(name.equals("image1")){
				iname1 = item.getName();
				ifile1 = item.get();
				
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,iname1,ifile1);		
			} else if(name.equals("image2")){
				iname2 = item.getName();
				ifile2 = item.get();
				
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,iname2,ifile2);		
			} else if(name.equals("image3")){
				iname3 = item.getName();
				ifile3 = item.get();
				
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,iname3,ifile3);		
			}
		}
	}
	
	DAOproduct.insert(pid,pname,pprice,pdesc,iname1,iname2,iname3);
	
	response.sendRedirect("Productlist.jsp");	
	
%>