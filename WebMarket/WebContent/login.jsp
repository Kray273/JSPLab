<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<%@ include file="header.jsp" %>


<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		Login
	</h1>
</div>	
</div>

<div class="container"  style="max-width: 330px">

<main class="form-signin">
  <form action="logincheck.jsp">
  <div class="d-flex justify-content-center">
    <img class="mb-4" src="img/Anne2.jpg" alt="" width="72" height="57">
        </div>
    <div class="form-floating">
      <input type="text" class="form-control" name="mname" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">아이디/별명</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="mpass" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">비밀번호</label>
    </div>
<div class="d-flex justify-content-end">
    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> 자동 로그인
      </label>
    </div>
        </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
    
	    <a id="custom-login-btn" href="javascript:kakaoLogin()">
	  <img src="img/kakao_login.png" width="305"  height="55" alt="카카오 로그인 버튼">	</a>
  </form>
  	<form action="memberinputpage.jsp">
    <button class="w-100 btn btn-lg btn-warning" type="submit">회원가입</button>
    </form>
    <p class="mt-1 mb-3 text-muted">&copy; 2022–2022</p>
</main>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
// script
// 발급 받은 키
      Kakao.init("?");

      function kakaoLogin() {
        window.Kakao.Auth.login({
          // 카카오 개발자 사이트의 동의항목에서 설정한 ID와 반드시 일치해야함
          scope: 'profile_nickname, account_email,gender',
          success: function (authObj) {
                console.log(authObj);
                window.Kakao.API.request({
                url:'/v2/user/me',
                success: res => {
                    const kakaoAccount = res.kakao_account;
					location.href='kakaocheck.jsp?mname=' + kakaoAccount.profile.nickname
							+ '&memail=' + kakaoAccount.email
							+ '&mgender=' + kakaoAccount.gender;
					                }
                });
          }
        });
      }
      </script>

</div>

<%@ include file = "footer.jsp" %>	
</body>
</html>
