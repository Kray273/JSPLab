<%@page import="dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 객체 사용</title>
</head>
<body>
<% MemberDTO dto = new MemberDTO();
dto.setId("id");
dto.setPw("1111");
dto.setName("name");
dto.setPhone("01011112222");
dto.setEmail("email@mul.com");
%>
<H1> 회원정보를 생성 완료했습니다. 확인해 볼까요?</H1>
<h3>아이디:<%=dto.getId() %></h3>
<h3>암호:<%=dto.getPw() %></h3>
<h3>이름:<%=dto.getName() %></h3>
<h3>폰:<%=dto.getPhone() %></h3>
<h3>이메일:<%=dto.getEmail() %></h3>

=======================================================
<jsp:useBean id="dto2" class="dto.MemberDTO"/> <!-- 클래스에는 패키지명, id는 참조변수명  -->
<jsp:setProperty property="id" name="dto2" value="id2"/><!-- dto.setId()  -->
<jsp:setProperty property="pw" name="dto2" value="2222"/>
<jsp:setProperty property="name" name="dto2" value="name2"/>
<jsp:setProperty property="phone" name="dto2" value="01022221111"/>
<jsp:setProperty property="email" name="dto2" value="2mail@mul.com"/>
 
<H1> 회원정보를 생성 완료했습니다. 확인해 볼까요?</H1>
<h3>아이디:<jsp:getProperty property="id" name="dto2"/></h3>
<h3>암호:<jsp:getProperty property="pw" name="dto2"/></h3>
<h3>이름:<jsp:getProperty property="name" name="dto2"/></h3>
<h3>폰:<%=dto2.getPhone() %></h3>
<h3>이메일:<%=dto2.getEmail() %></h3>
 
 
</body>
</html>