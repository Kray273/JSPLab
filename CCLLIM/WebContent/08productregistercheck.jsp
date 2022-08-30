<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.util.*" %>
<%@ page import="util.*"%>
<%@page import="DB.*"%>

<%
	String product_code= null;
	String product_name = null;
	String product_price = null;
	String product_amount = null;
	String product_desc = null;
	String product_launch = null;
	
	String product_img1 = null; 
	byte[] file1 = null; 
	String product_img2 = null; 
	byte[] file2 = null; 
	String product_img3 = null; 
	byte[] file3 = null; 

	
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	
	List items = sfu.parseRequest(request);
	
	Iterator iter = items.iterator();
	
	while(iter.hasNext()){
		FileItem item = (FileItem)iter.next();
		String name = item.getFieldName();
		
		if(item.isFormField()){
			String value = item.getString("UTF-8");
			if(name.equals("product_code")){product_code = value;}
			else if(name.equals("product_name")){product_name = value;}
			else if(name.equals("product_price")){product_price = value;}
			else if(name.equals("product_amount")){product_amount = value;}
			else if(name.equals("product_desc")){product_desc = value;}
			else if(name.equals("product_launch")){product_launch = value;}
		} else{
			if(name.equals("product_img1")){
				product_img1 = item.getName();
				file1 = item.get();
				
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,product_img1,file1);		
			} else if(name.equals("product_img2")){
				product_img2 = item.getName();
				file2 = item.get();
				
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,product_img2,file2);
			} else if(name.equals("product_img3")){
				product_img3 = item.getName();
				file3 = item.get();
				
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,product_img3,file3);		
			}
		}
	}
	
	DAOproduct.insert(product_code, product_name, product_price, product_amount, product_desc, product_img1, product_img2, product_img3, product_launch);
	
	out.print("<script>alert('등록완료.');</script>");
	out.print("<script>location.href='08productlist.jsp';</script>");	
%>

    