<%@page import="java.util.ArrayList"%>
<%@page import="DB.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CCLLIM</title>
</head>
<body>

   
<%@ include file="01header.jsp" %>
<%
	    user_id = (String)session.getAttribute("user_id");
	    level = (String)session.getAttribute("user_level");
    	    	
	    if (user_id == null) {
			out.println("<script>alert('로그인이 필요합니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		}
	    
		DTOuser list = DAOuser.detail(user_id); 
		ArrayList<DTOask> lists1 = DAOask.getListU(user_id); 
		ArrayList<DTOmade> lists2 = DAOmade.getListU123(user_id); 
		ArrayList<DTOdelivery> d1 = DAOdelivery.getListU1(user_id); 
		ArrayList<DTOdelivery> d2 = DAOdelivery.getListU2(user_id); 
%> 
<div class=container>

 <div class="d-flex align-items-center p-3 my-3 text-dark shadow-sm">
    <h1 class="h3 mb-0 text-dark lh-1"><%=list.getUser_id()%></h1>
 </div>


<div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-0">My things</h6>
    <div class="d-flex text-muted pt-3">
      
    
    </div>
    <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-0">구매 내역</h6>
    <% for(DTOdelivery d : d1){%>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#20c997"/></svg>

      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
        <div class="d-flex justify-content-between">
          <strong class="text-gray-dark"><%=d.getProduct_name()%></strong>
          <a href="05detail.jsp.jsp?no=<%=d.getProduct_code()%>">제품확인</a>
        </div>
        <span class="d-block">배송주소@<%=d.getUser_addr()%></span>
      </div>
    </div>
     <%} %> 
   
    <small class="d-block text-end mt-3">
      <a href="#">All suggestions</a>
    </small>
  </div>
  
   
   <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-0">상담 내역</h6>
    <% for(DTOask list1 : lists1){%>
    <div class="d-flex text-muted pt-3">
          <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#6f42c1"/></svg>
      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
        <div class="d-flex justify-content-between">
          <strong class="text-gray-dark"><%=list1.getAsk_title() %></strong>
          <a href="03askdetail.jsp?no=<%=list1.getAsk_no()%>">Check</a>
        </div>
        <span class="d-block"><%=list1.getAsk_day()%> </span>
      </div>
    </div>
  <%} for(DTOmade list2 : lists2){%>
    <div class="d-flex text-muted pt-3">
          <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#adb5bd"/></svg>
      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
        <div class="d-flex justify-content-between">
          <strong class="text-gray-dark"><%=list2.getMade_title()%></strong>
          <a href="03madedetail.jsp?no=<%=list2.getMade_no()%>">Check</a>
        </div>
        <span class="d-block"><%=list2.getMade_date()%> -상담 대기중-</span>
      </div>
    </div>
    <%} %>  
    
  </div>
  
  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-0">배송 확인</h6>
  <% for(DTOdelivery d : d2){%>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#ffc107"/></svg>

      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
        <div class="d-flex justify-content-between">
          <strong class="text-gray-dark"><%=d.getProduct_name()%></strong>
          <a href="#?no=<%=d.getDelivery_no()%>">배송추척</a>
        </div>
        <span class="d-block"><%=d.getDelivery_date()%></span>
      </div>
    </div>
    <%}%>
    
   
    <small class="d-block text-end mt-3">
      <a href="#">배송문의</a>
    </small>
  </div>

 </div>
 
 
 <div class="align-items-center  text-dark shadow-sm">
  
    <div class="d-flex align-items-center p-3 my-3 text-dark shadow-sm">
    <h1 class="h3 mb-0 text-dark lh-1">내 정보</h1>
 	</div>
 	<br>
        <ul>
          <li>User ID : <%=list.getUser_id()%> </li>
          <li>Number : <%=list.getUser_tel()%></li>
          <li>Email : <%=list.getUser_email()%></li>
          <li>Address : <%=list.getUser_addr()%></li>
        </ul>
    <div class="d-grid gap-2 col-6 mx-auto">
		<a href="03myinfoedit.jsp?" class="btn btn-outline-success" role="button">Edit</a>
	</div>
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="03myinfodrop.jsp?" class="btn btn-outline-danger" role="button">Drop out</a>
	</div>
	<br>
 </div>
 
  </div>
<%@ include file ="01footer.jsp" %>	

</body>
</html>

    