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
    DTOproduct list = DAOproduct.detail(no);
%>
<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">Product_edit </p>
</div>	
</div>

<div class="container">
  <main>
      <div class="col-md-7 col-lg-8"> 
      <form action="08producteditcheck.jsp" method="post" enctype="multipart/form-data" class="needs-validation" novalidate >
          <div class="row g-3">
          
            <div class="col-12">
              <label for="Name"  class="form-label">code</label>
              <input type="text" name="product_code" value="<%=list.getProduct_code()%>" class="form-control" id="firstName" placeholder="" readonly>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
            <div class="col-12">
              <label for="Name"  class="form-label">제품명</label>
              <input type="text" name="product_name" value="<%=list.getProduct_name()%>" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
             <div class="col-12">
              <label for="Name"  class="form-label">가격</label>
              <input type="text" name="product_price" value="<%=list.getProduct_price()%>" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
             <div class="col-12">
              <label for="Name"  class="form-label">수량</label>
              <input type="text" name="product_amount" value="<%=list.getProduct_amount()%>" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
            <div class="col-12">
              <label for="Name"  class="form-label">설명</label>
               <textarea id="firstName" name="product_desc"  rows="5" cols="40" class="form-control" placeholder="" required><%=list.getProduct_desc()%></textarea>
             <div class="invalid-feedback">
                Valid product_code is required.
              </div>
            </div>
            
            <div class="col-12">
            	<label for="zip" class="form-label">Main_photo</label>
			 	<input type="file" name="product_img1" class="form-control " id="image1">
              	<div class="invalid-feedback">
                 Image required.
              </div>
         	 </div>
	         	
      
         	 <div class="col-12">
            	<label for="zip" class="form-label">Sub_photo1</label>
			 	<input type="file" name="product_img2" class="form-control " id="image2">
              	<div class="invalid-feedback">
                 Image required.
              </div>
         	 </div>
         	 
         	 
         	 <div class="col-12">
            	<label for="zip" class="form-label">Sub_photo2</label>
			 	<input type="file" name="product_img3" class="form-control " id="image3">
              	<div class="invalid-feedback">
                 Image required.
              </div>
         	 </div>
            
            <div class="col-12">
              <label for="country" class="form-label">Launch</label><br>
               <div class="form-check form-check-inline">
                 <% if (list.getProduct_launch().equals("0")) {%>
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
				<%	} else if (list.getProduct_launch().equals("1")) {%>	
				  <input class="form-check-input" name="product_launch" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="0" >
				  <label class="form-check-label" for="inlineRadio1">
				    0: 노출없음
				  </label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" name="product_launch"  type="radio" name="inlineRadioOptions" id="inlineRadio2" value="1" checked >
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
				<%	} else if (list.getProduct_launch().equals("2")) {%>	
				  <input class="form-check-input" name="product_launch" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="0" >
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
				  <input class="form-check-input" name="product_launch"  type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2" checked >
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
				<%	} else if (list.getProduct_launch().equals("3")) {%>	
				  <input class="form-check-input" name="product_launch" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="0" >
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
				  <input class="form-check-input" name="product_launch"  type="radio" name="inlineRadioOptions" id="inlineRadio2" value="3"  checked>
				  <label class="form-check-label" for="inlineRadio4">
				    3: 신진 디자이너
				  </label>
				</div>
				<%	}%>
              <div class="invalid-feedback">
                Please select Your gender.
              </div>
            </div>


          <hr class="my-4">
          <div class="text-center">
          <button class="w-50 btn btn-primary btn-success" type="submit">등록</button>
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
 <script>
		const fileInput = document.querySelector('#image1');
		// Create a new File object
		const myFile = new File(['Hello World!'], '<%=list.getProduct_img1() %>', {
		type: 'text/plain',
		lastModified: new Date(),
		});
		
		// Now let's create a DataTransfer to get a FileList
		const dataTransfer = new DataTransfer();
		dataTransfer.items.add(myFile);
		fileInput.files = dataTransfer.files;
</script>

<script>
		const fileInput2 = document.querySelector('#image2');
		// Create a new File object
		const myFile2 = new File(['Hello World!'], '<%=list.getProduct_img2() %>', {
		type: 'text/plain',
		lastModified: new Date(),
		});
		
		// Now let's create a DataTransfer to get a FileList
		const dataTransfer2 = new DataTransfer();
		dataTransfer2.items.add(myFile2);
		fileInput2.files = dataTransfer2.files;
</script>

<script>
		const fileInput3 = document.querySelector('#image3');
		// Create a new File object
		const myFile3 = new File(['Hello World!'], '<%=list.getProduct_img3() %>', {
		type: 'text/plain',
		lastModified: new Date(),
		});
		
		// Now let's create a DataTransfer to get a FileList
		const dataTransfer3 = new DataTransfer();
		dataTransfer3.items.add(myFile3);
		fileInput3.files = dataTransfer3.files;
</script>
	
</body>
</html>

    