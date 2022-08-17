<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<footer class="navbar navbar-expand-lg bg-light">
	<div class = "container">
		<p>&copy; Kray</p>
 		<div class = "text.lift">
			<%
			LocalDateTime now = LocalDateTime.now();
			LocalTime t = LocalTime.now();
    		LocalDate d = LocalDate.now();
    		
    	    int h = t.getHour();

            int m = t.getMinute();

            int s = t.getSecond();
			%>
			<%-- <p>CurrentDateTime: <%=now%></p>
			<p>CurrentTime: <%=t%></p>
			<p>CurrentDate: <%=d%></p> --%>
			<p>CurrentTimeMake: <%= h%> : <%=m%> : <%= s%></p>
		</div>
	</div>
</footer>