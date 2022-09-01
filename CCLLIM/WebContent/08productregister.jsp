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

<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">Product_register </p>
</div>	
</div>

<div class="container">
  <main>
      <div class="col-md-7 col-lg-8"> 
      <form action="08productregistercheck.jsp" method="post" enctype="multipart/form-data" class="needs-validation" novalidate >
          <div class="row g-3">
          
            <div class="col-12">
              <label for="Name"  class="form-label">code</label>
              <input type="text" name="product_code" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
            <div class="col-12">
              <label for="Name"  class="form-label">제품명</label>
              <input type="text" name="product_name" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
             <div class="col-12">
              <label for="Name"  class="form-label">가격</label>
              <input type="text" name="product_price" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
             <div class="col-12">
              <label for="Name"  class="form-label">수량</label>
              <input type="text" name="product_amount" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
            <div class="col-12">
              <label for="Name"  class="form-label">설명</label>
               <textarea id="firstName" name="product_desc" rows="5" cols="40" class="form-control" placeholder="" required></textarea>
             <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
            <div class="col-12">
            	<label for="zip" class="form-label">Main_photo</label>
			 	<input type="file" name="product_img1" class="form-control " id="inputGroupFile02">
              	<div class="invalid-feedback">
                 Image required.
              </div>
         	 </div>
         	 
         	 <div class="col-12">
            	<label for="zip" class="form-label">Sub_photo1</label>
			 	<input type="file" name="product_img2" class="form-control " id="inputGroupFile02">
              	<div class="invalid-feedback">
                 Image required.
              </div>
         	 </div>
         	 
         	 <div class="col-12">
            	<label for="zip" class="form-label">Sub_photo2</label>
			 	<input type="file" name="product_img3" class="form-control " id="inputGroupFile02">
              	<div class="invalid-feedback">
                 Image required.
              </div>
         	 </div>
            
            <div class="col-12">
              <label for="country" class="form-label">Launch</label><br>
               <div class="form-check form-check-inline">
				  <input class="form-check-input" name="product_launch" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="0" checked>
				  <label class="form-check-label" for="inlineRadio1">
				    0: 노출없음
				  </label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" name="product_launch"  type="radio" name="inlineRadioOptions" id="inlineRadio2" value="1"  >
				  <label class="form-check-label" for="inlineRadio2">
				    1: 신상
				  </label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" name="product_launch"  type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2"  >
				  <label class="form-check-label" for="inlineRadio3">
				    2: 오뜨꾸뜨르
				  </label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" name="product_launch"  type="radio" name="inlineRadioOptions" id="inlineRadio2" value="3"  >
				  <label class="form-check-label" for="inlineRadio4">
				    3: 신진 디자이너
				  </label>
				</div>
              <div class="invalid-feedback">
                Please select Your gender.
              </div>
            </div>


          <hr class="my-4">
          <button class="w-50 btn btn-primary btn-success" type="submit">등록</button>
          <button class="w-50 btn btn-primary btn-danger" type="reset" onclick="reset()">취소</button>
        </div>
        </form>
        
    <hr class="my-4">
	<div class="d-grid gap-2 col-6 mx-auto">
		<a href="08productlist.jsp" class="btn btn-outline-secondary" role="button">목록보기</a>
	</div>
      </div>
  </main>
</div>	

<%@ include file ="01footer.jsp" %>	

</body>
</html>

    