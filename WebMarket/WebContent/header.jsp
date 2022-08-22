<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
	crossorigin="anonymous">
	


	 <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Fifth navbar example">
    <div class="container-fluid">
      <a class="navbar-brand" href="welcome.jsp">WebMK</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample05">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="welcome.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">게시판</a>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link disabled">Disabled</a>
          </li> -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">회원관리</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
              <li><a class="dropdown-item" href="logout.jsp">로그아웃</a></li>
              <li><a class="dropdown-item" href="#">----------</a></li>
              <li><a class="dropdown-item" href="memberinputpage.jsp">회원가입</a></li>
              <li><a class="dropdown-item" href="memberoutpage.jsp">회원탈퇴</a></li>
            </ul>
          </li>
          
           <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">관리자전용</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="members.jsp">회원관리</a></li>
              <li><a class="dropdown-item" href="products.jsp">제품관리</a></li>
              <li><a class="dropdown-item" href="boards.jsp">게시판관리</a></li>
              <li><a class="dropdown-item" href="etcs.jsp">기타</a></li>
            </ul>
          </li>
          
           <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">제품</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="Productlist.jsp">제품목록</a></li>
              <li><a class="dropdown-item" href="cart.jsp">장바구니</a></li>
              <li><a class="dropdown-item" href="buyinglist.jsp">구매내역</a></li>
              <li><a class="dropdown-item" href="delivery.jsp">배송확인</a></li>
            </ul>
          </li>
          
        </ul>
        <!-- <form role="search">
          <input class="form-control" type="search" placeholder="Search" aria-label="Search">
        </form> -->
	 <%--  <%
	    String mname = (String)session.getAttribute("mname");
		boolean login = true;
		if (login) { 
			out.print("<span class='text-white'>님 로그인 상태입니다.</span>");
		 }else { 
			out.print("<span class='text-white'>방문을 환영합니다. 로그인 하세요.</span>");
		 } 
		%> --%>
	    
      </div>
    </div>
  </nav>


