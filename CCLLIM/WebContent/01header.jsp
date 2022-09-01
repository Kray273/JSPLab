<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/blog/">


<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" 
	rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" 
	crossorigin="anonymous">
	
    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
       a {text-decoration: none;}
    </style>

     <!-- Custom styles for this template -->
    <link href="css/blog.rtl.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/blog.css" rel="stylesheet">

 <%
	    String user_id = (String)session.getAttribute("user_id");
	    String level = (String)session.getAttribute("user_level");
    	    	
	  	String status = null;
	    if (user_id == null) {
    		status = "방문을 환영합니다. 로그인 해주세요";
		} else{
			status = user_id + "님 방문을 환영합니다.";
		} 
	%> 

	
	
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Fifth navbar example">
<div class="container-fluid">
<div class="container">

	  <header class="blog-header lh-10 py-3">
	    <div class="row flex-nowrap justify-content-between align-items-center">
	      
	      <div class="col-4 pt-1">
	        <a class="link-secondary" href="https://instagram.com/yangholeeee?igshid=YmMyMTA2M2Y=" target="_blank">Instagram</a>
	      </div>
	      
	      <div class="col-4 text-center">
	      <img src="img/logo.png" width="50px" height="50px">
	      <br>
	      <a class="blog-header-logo text-white" href="01main.jsp">CCLLIM</a>
	      </div>
	      
	      <div class="col-4 d-flex justify-content-end align-items-center">
	        <a class="link-secondary" href="#" aria-label="Search">
	          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="mx-3" role="img" viewBox="0 0 24 24"><title>Search</title><circle cx="10.5" cy="10.5" r="7.5"/><path d="M21 21l-5.2-5.2"/></svg>
	        </a>
	       <%if (user_id != null) {%>
		    <a class="btn btn-sm btn-outline-secondary" href="03myinfo.jsp">내 정보</a>
		   
			 <%}%>
	        
	        <%
		    if (user_id == null) {%>
		    	<a class="btn btn-sm btn-outline-secondary" href="02signin.jsp">Sign in</a>
			<%} else{ %>
				<a class="btn btn-sm btn-outline-secondary" href="02signout.jsp">Sign out</a>
			<% }%>  
	      </div> 
	    </div>
	    <div class="text-end"><span class='text-white'><%=status%></span></div>
	  </header>
 
 		
 	 <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Tenth navbar example">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="04intro.jsp">We are</a>
           
          </li>
    
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">Store</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="05newlist.jsp">2022 F/W</a></li>
              <li><a class="dropdown-item" href="05hautecouture.jsp">haute couture</a></li>
              <li><a class="dropdown-item" href="05newdesigner.jsp">New designer</a></li>
              <li><a class="dropdown-item" href="05all.jsp">all</a></li>
            </ul>
          </li>
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">Custom/Repair</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="06custom.jsp">Custom</a></li>
              <li><a class="dropdown-item" href="06repair.jsp">Repair</a></li>
              <li><a class="dropdown-item" href="06making.jsp">Making</a></li>
            </ul>
          </li>
          
         <%
         if (level == null) {}
         else if (level.equals("3")) {%> 
           <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">관리자</a>
            <ul class="dropdown-menu">
               <li><a class="dropdown-item" href="08consultlist.jsp">상담목록</a></li>
              <li><a class="dropdown-item" href="08userlist.jsp">회원목록</a></li>
             <li><a class="dropdown-item" href="08deliverytlist.jsp">배송관리</a></li>
            </ul>
          </li>
          <%} 
         else if (level.equals("2")) {%>
           <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">관리자</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="08rawlist.jsp">자제목록</a></li>
              <li><a class="dropdown-item" href="08productlist.jsp">제품목록</a></li>
            </ul>
          </li> 
          <%} 
         else if (level.equals("1")) {%>  --%>
            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">관리자</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="08consultlist.jsp">상담목록</a></li>
              <li><a class="dropdown-item" href="08userlist.jsp">회원목록</a></li>
              <li><a class="dropdown-item" href="08rawlist.jsp">자제목록</a></li>
              <li><a class="dropdown-item" href="08productlist.jsp">제품목록</a></li>
              <li><a class="dropdown-item" href="08deliverytlist.jsp">배송관리</a></li>
            </ul>
          </li>
          <%}%> 
          
          
        </ul>
      </div>
    </div>
  </nav>    
</div>      
</div>
</nav>
