<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DB.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String no = request.getParameter("no");
	DTOborad list = DAOborad.fileDetail(no);

	String img = list.getIname();
	String imgstr = "";
	if(img != null){
		imgstr ="images/" + img;
	}
%>
	<img src="<%=imgstr%>">
	<%=list.getBid()%>
	<%=list.getTitle()%>
	<%=list.getContent()%>
	<%=list.getIname()%>
	<%=list.getBdate()%>
	<Br>
	
</body>
</html>
</html>