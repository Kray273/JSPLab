<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%			LocalDateTime now = LocalDateTime.now();
			LocalTime t = LocalTime.now();
    		LocalDate d = LocalDate.now();
    		
    	    int h = t.getHour();

            int m = t.getMinute();

            int s = t.getSecond();
%>
<%-- <p>CurrentDateTime: <%=now%></p>
			<p>CurrentTime: <%=t%></p>
			<p>CurrentDate: <%=d%></p> --%>
<br><br><br><br><br>						
<footer>
	<nav class="navbar navbar-dark p-0 bg-warning fixed-bottom">
	<div class="container-fluid">
	<span class="navbar-brand mb-0">&copy; Kray</span>
	<form class="d-flex" role="search">
	<p class = "text-end navbar-brand mb-0">CurrentTimeMake : <%= h%>: <%=m%>: <%= s%></p>
	</form>
	</div>
	</nav>
</footer>