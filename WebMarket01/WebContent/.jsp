<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page import="java.time.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>WebMarket</title>


</head>
<body>
<%@ include file = "header.jsp" %>
	

	<%! String greeting = "Welcome to Web shopping Mall"; %>
	<%! String tagline = "Welcome to web Market!"; %>

	<div class="alert alert-secondary" role="alert">
	<div class="container">
		<h1 class = "display-3">
			<%= greeting %>
		</h1>
	</div>	
	</div>
	
	<div class = "container">
	<div class = "text-center">
		<h3><%= tagline %></h3>
	</div>
	</div>
	
	
	
	
	
	
<%@ include file = "footer.jsp" %>	

</body>
</html>