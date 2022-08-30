<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CCLLIM_sing in</title>
</head>
<body>


<%@ include file="01header.jsp" %>


<div class="alert alert-secondary" role="alert">
 <div class="container">
	<p class = "display-5">Sing in	</p>
</div>	
</div>

<div class="container"  style="max-width: 330px">

<main class="form-signin">
  <form action="02signincheck.jsp">
    <div class="form-floating">
      <input type="text" class="form-control" name="user_id" id="floatingInput" placeholder="ID">
      <label for="floatingInput">ID</label>
    </div>
    
    <div class="form-floating">
      <input type="text" class="form-control" name="user_pw" id="floatingInput" placeholder="Password">
      <label for="floatingInput">Password</label>
    </div>
    
<div class="d-flex justify-content-end">
    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me" name=""> 자동 로그인
      </label>
    </div>
        </div>
        
    <button class="w-100 btn btn-lg btn-light" type="submit">로그인</button>
    
	    <a id="custom-login-btn" href="javascript:kakaoLogin()">
	  <img src="img/kakao_login.png" width="305"  height="55" alt="카카오 로그인 버튼">	</a>
  </form>
  	<form action="02singup.jsp">
  	<button class="w-100 btn btn-lg btn-secondary" type="submit">회원가입</button>
    </form>
    <p class="mt-1 mb-3 text-muted">&copy; 2022–2022</p>
</main>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
// script
// 발급 받은 키
      Kakao.init("7cf7f0702b6861c66a6cbc3fc964f788");

      function kakaoLogin() {
        window.Kakao.Auth.login({
          // 카카오 개발자 사이트의 동의항목에서 설정한 ID와 반드시 일치해야함
          scope: 'profile_nickname',
          success: function (authObj) {
                console.log(authObj);
                window.Kakao.API.request({
                url:'/v2/user/me',
                success: res => {
                    const kakaoAccount = res.kakao_account;
					location.href='kakaocheck.jsp?user_id=' + kakaoAccount.profile.nickname;
					}
                });
          }
        });
      }
      </script>

</div>

<%@ include file = "01footer.jsp" %>	

</body>
</html>

    