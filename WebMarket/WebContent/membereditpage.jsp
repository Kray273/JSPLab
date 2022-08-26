<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page import="DB.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member_Edit</title>


</head>
<body>
<%@ include file = "header.jsp" %>
<%
	mname = (String)session.getAttribute("mname");

   if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	} 
%> 


<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Member Edit</h1>
</div>	
</div>
<% 
	DTOmember list = DAOmember.memberDetail(mname);
 %>
<div class="container">
  <main>
      <div class="col-md-7 col-lg-8"> 
      <form action="memberinput.jsp" method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-12">
              <label for="Name"  class="form-label">회원이름</label>
              <input type="text" name="mname"  class="form-control" id="firstName" placeholder="" value="<%=list.getMname()%>" required>
              <div class="invalid-feedback">
                Valid Your name is required.
              </div>
            </div>
            
            <div class="col-12">
              <label for="Name"  class="form-label">비밀번호</label>
              <input type="text" name="mpass" class="form-control" id="firstName" placeholder="" value="<%=list.getMpass()%>" required>
              <div class="invalid-feedback">
                Valid password is required.
              </div>
            </div>
            
            <div class="col-12">
              <label for="Name"  class="form-label">전화번호</label>
              <input type="text" name="mtel" class="form-control" id="firstName" placeholder="" value="<%=list.getMtel()%>" required>
              <div class="invalid-feedback">
                Valid Your digit is required.
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" name="memail" id="email" placeholder="" value="<%=list.getMemail()%>">
              <div class="invalid-feedback">
                Please enter a valid email address for updates.
              </div>
            </div>
            
            <div class="col-12">
              <label for="country" class="form-label">Gender</label><br>
              <div class="form-check form-check-inline">
               <% if (list.getMgender().equals("m")) {%>
				  <input class="form-check-input" name="mgender" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="m" checked>
				  <label class="form-check-label" for="inlineRadio1">Male</label>
			   </div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" name="mgender"  type="radio" name="inlineRadioOptions" id="inlineRadio2" value="fm"  >
				  <label class="form-check-label" for="inlineRadio2">Female</label>
			<%	} else {%>	
				  <input class="form-check-input" name="mgender" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="m" >
				  <label class="form-check-label" for="inlineRadio1"> Male </label>
				</div>
				<div class="form-check form-check-inline">
				  <input class="form-check-input" name="mgender"  type="radio" name="inlineRadioOptions" id="inlineRadio2" value="fm" checked >
				  <label class="form-check-label" for="inlineRadio2">Female</label>
				<%	} %>
              <div class="invalid-feedback">
                Please select Your gender.
              </div>
            </div>
           </div>
      

            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" name="maddr" id="address" placeholder="1234 Main St" value="<%=list.getMaddr()%>" required>
              <div class="invalid-feedback">
                Please enter your address.
              </div>
            </div>

            <div class="col-12">
            	<label for="zip" class="form-label">Upload</label>
			 	<input type="file" name="image" class="form-control " id="inputGroupFile02">
              	<div class="invalid-feedback">
                 Image required.
              </div>
         	 </div>
         	 
         	 <script>
			    // Get a reference to our file input
			    const fileInput = document.querySelector('input[type="file"]');
			
			    // Create a new File object
			    const myFile = new File(['Hello World!'], '<%=list.getIname() %>', {
			        type: 'text/plain',
			        lastModified: new Date(),
			    });
			
			    // Now let's create a DataTransfer to get a FileList
			    const dataTransfer = new DataTransfer();
			    dataTransfer.items.add(myFile);
			    fileInput.files = dataTransfer.files;
			</script>

          <hr class="my-4">
          <button class="w-50 btn btn-primary btn-lg" type="submit">수정</button>
          <button class="w-50 btn btn-primary btn-secondary" type="reset" onclick="reset()">취소</button>
           <input type="button" class="w-30 btn btn-primary btn-danger" value="탈퇴" onClick="confirm_onClick();">

			<script>
				function confirm_onClick() {
					var answer = confirm("정말 탈퇴하시겠습니까?");
					
				if (answer) {
					location.href = "memberoutpage.jsp";
				} else {
					history.back();
				}	
				}
			</script>
        </div>
        </form>
      </div>
  </main>
</div>	
	
<%@ include file = "footer.jsp" %>	

</body>
</html>