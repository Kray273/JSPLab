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
		} else{
	    if (level.equals("4")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} else if (level.equals("5")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		} else if (level.equals("6")) {
			out.println("<script>alert('권한이 없습니다.');</script>");
			out.println("<script>location.href='01main.jsp'</script>");
		}}
%> 
<%
	String no = request.getParameter("no");
    DTOraw list = DAOraw.detail(no);
%>

<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">Raw_edit </p>
</div>	
</div>

<div class="container">
  <main>
      <div class="col-md-7 col-lg-8"> 
      <form action="08raweditcheck.jsp" method="post" enctype="multipart/form-data" class="needs-validation" novalidate >
          <div class="row g-3">
          
            <div class="col-12">
              <label for="Name"  class="form-label">code</label>
              <input type="text" name="raw_code" class="form-control" id="firstName" placeholder="" value="<%=list.getRaw_code()%>" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
            <div class="col-12">
              <label for="Name"  class="form-label">자재명</label>
              <input type="text" name="raw_name" value="<%=list.getRaw_name()%>" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
            
            
             <div class="col-12">
              <label for="Name"  class="form-label">수량</label>
              <input type="text" name="raw_amount" value="<%=list.getRaw_amount()%>" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
            <div class="col-12">
            	<label for="zip" class="form-label">image</label>
			 	<input type="file" name="raw_image" class="form-control " value="" id="inputGroupFile02">
              	<div class="invalid-feedback">
                 Image required.
              </div>
         	 </div>
         	 
         	 <div class="col-12">
              <label for="Name"  class="form-label">위치</label>
              <input type="text" name="raw_location" value="<%=list.getRaw_location()%>" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>

          <hr class="my-4">
          <button class="w-50 btn btn-primary btn-success" type="submit">등록</button>
          <button class="w-50 btn btn-primary btn-danger" type="reset" onclick="reset()">취소</button>
        </div>
        </form>
        
    <hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="08rawlist.jsp" class="btn btn-outline-secondary" role="button">목록보기</a>
	</div>
      </div>
  </main>
</div>	

<%@ include file ="01footer.jsp" %>	
 <script>
			    // Get a reference to our file input
			    const fileInput = document.querySelector('input[type="file"]');
			
			    // Create a new File object
			    const myFile = new File(['Hello World!'], '<%=list.getRaw_image()%>', {
			        type: 'text/plain',
			        lastModified: new Date(),
			    });
			
			    // Now let's create a DataTransfer to get a FileList
			    const dataTransfer = new DataTransfer();
			    dataTransfer.items.add(myFile);
			    fileInput.files = dataTransfer.files;
			</script>

</body>
</html>

    