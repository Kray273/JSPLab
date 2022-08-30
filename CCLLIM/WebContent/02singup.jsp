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


<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">Sing up</p>
</div>	
</div>

<div class="container">
  <main>
      <div class="col-md-7 col-lg-8"> 
      <form action="02singupcheck.jsp" method="post" >
          <div class="row g-3">
          
            <div class="col-12">
              <label for="Name"  class="form-label">ID</label>
              <input type="text" name="user_id" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid Your ID is required.
              </div>
            </div>
            
            <div class="col-12">
              <label for="Name"  class="form-label">password</label>
              <input type="password" name="user_pw" class="form-control" id="firstName" placeholder="" required>
              <div class="invalid-feedback">
                Valid password is required.
              </div>
            </div>
            
            <div class="col-12">
              <label for="Name"  class="form-label">전화번호</label>
              <input type="text" name="user_tel" class="form-control" id="firstName" placeholder="010-0000-0000" required>
              <div class="invalid-feedback">
                Valid Your digit is required.
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" name="user_tel" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for updates.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" name="user_addr" id="address" placeholder="서울시 종로구 율곡로 000-00 0층" required>
              <div class="invalid-feedback">
                Please enter your address.
              </div>
            </div>


          <hr class="my-4">
          <button class="w-50 btn btn-primary btn-success" type="submit">등록</button>
          <button class="w-50 btn btn-primary btn-secondary" type="reset" onclick="reset()">취소</button>
        </div>
        </form>
      </div>
  </main>
</div>	

<%@ include file ="01footer.jsp" %>	

</body>
</html>

    