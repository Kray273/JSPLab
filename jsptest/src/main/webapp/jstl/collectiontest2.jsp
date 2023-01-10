<%@page import="java.util.HashMap"%>
<%@page import="dto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Collection2</title>
</head>
<body>
<c:forEach begin="1" end="10" step="2" var="odd" varStatus="vs">
${odd} :  ${vs.current}<br>
</c:forEach>

<%
String array[] = {"red", "black","white","green","blue"};
%>
<c:set var="colors" value="<%=array%>"/>

<c:forEach items="${colors}" var="col" varStatus="st">
	<h3>${st.index}번째 데이터 = 
	${col} : ${st.current} --${st.count}번 반복중입니다.</h3>
	<h5>첫번째냐? ${st.first} : 마지막이냐? ${st.last}</h5>
</c:forEach>

<c:forEach items="${colors}" varStatus="st">
	<c:if test="${st.first}">
		<h5>${st.current}</h5>
	</c:if>
	<c:if test="${st.last}">
		<h5>${st.current}</h5>	
	</c:if>
</c:forEach>


<jsp:useBean id="list" class="java.util.ArrayList" />
<jsp:useBean id="dto" class="dto.MemberDTO"/>
<%
//ArrayList<MemberDTO> list = new ArrayList();
list.add(dto);
list.add(new MemberDTO("MEM1","1","회원1","01012341234","이메일1@a.com","서울시 용산구", "2022-12-12"));
list.add(new MemberDTO("MEM2","2","회원2","01012344321","이메일2@a.com","부산시 용산구","2023-01-12"));
list.add(new MemberDTO("MEM3","3","회원3","01043211234","이메일3@a.com","제주시 용산구","2012-08-12"));
list.add(new MemberDTO("MEM4","4","회원4","01043214321","이메일4@a.com","전주시 용산구","2022-08-12"));
list.add(new MemberDTO("MEM5","5","회원5","01012345678","이메일5@a.com","청주시 용산구","2022-08-12"));

//((MemberDTO)list.get(0)).getId(); 형변환해서 출력해야함

%>

<table border="3">
<c:forEach items="${list}" varStatus="vs" >
	<tr><td>${vs.current.id}</td><td>${vs.current.name}</td>
	<td>${vs.current.address}</td></tr>
</c:forEach>
</table>

<%

HashMap<String, String> map = new HashMap();
map.put("빨강","red");
map.put("주황","orange");
map.put("노랑","yellow");
map.put("초록","green");
map.put("파랑","blue");
map.put("남색","navy");
map.put("보라","purple");
map.put("one", "black");
pageContext.setAttribute("colormap", map);

%>

<c:set var="colorMap" value="<%=map%>"/>
<c:forEach items="${colorMap}" var="col">
	<h5>한국어 색상 ${col.key}에 대한 영문 색상은 ${col.value}입니다.</h5>
</c:forEach>


</body>
</html>