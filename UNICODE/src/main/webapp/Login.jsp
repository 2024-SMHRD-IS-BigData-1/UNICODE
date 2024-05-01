
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>UnicodeLogin</title>
	<link rel="stylesheet" href="assets/css/Join.css">
</head>
<body>
	    <div class="login-wrapper" style="margin-top:100px;">
        <h2>UNICODE 로그인</h2>
        <form method="post" action="LoginService" id="login-form" onsubmit="return validateForm()">
		  <input type="text" name="id" placeholder="아이디" id="id">
		  <div id="id-error" style="color: red;"></div>
		  <input type="password" name="pw" placeholder="비밀번호" id="pw">
		  <div id="pw-error" style="color: red;"></div>
		  <input type="submit" value="로그인">
		  <a href="Join.jsp" class="join">회원가입</a>
		  <div>
		    <a href="javascript:kakaoLogin()"><img src="assets/img/kakao_login.png" style="width:100%"></a>
		  </div>
		</form>
         <form id="kakaoLoginForm" action="KakaoJoinService" method="POST" style="display: none;">
		    <input type="hidden" name="id" />
		    <input type="hidden" name="email" />
		    <input type="hidden" name="name" />
		    <input type="hidden" name="phoneNumber" />
		 </form>
        
    </div>
    <script type="text/javascript">
		  function validateForm() {
		    var id = document.getElementById('id').value;
		    var pw = document.getElementById('pw').value;
		    let valid = true;
		
		    if (id == "") {
		      document.getElementById('id-error').innerText = "아이디를 입력해 주세요";
		      valid = false;
		    } else {
		      document.getElementById('id-error').innerText = "";
		    }
		
		    if (pw == "") {
		      document.getElementById('pw-error').innerText = "비밀번호를 입력해 주세요";
		      valid = false;
		    } else {
		      document.getElementById('pw-error').innerText = "";
		    }
		
		    return valid;
		  }
</script>
	<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript">
   

    Kakao.init('dda96a1a63ca7218188c2bfb063b1a0a');
    function kakaoLogin() {
        Kakao.Auth.login({
            success: function (authObj) {
                Kakao.API.request({
                    url: '/v2/user/me',
                    success: function (response) {
                        // Form에 데이터 설정
                        document.querySelector('#kakaoLoginForm [name=id]').value = response.id;
                        document.querySelector('#kakaoLoginForm [name=email]').value = response.kakao_account.email;
                        document.querySelector('#kakaoLoginForm [name=name]').value = response.properties.nickname;
                        document.querySelector('#kakaoLoginForm [name=phoneNumber]').value = response.kakao_account.phone_number;
                        
                        // Form 제출
                        document.getElementById('kakaoLoginForm').submit();
                    }
                });
            }
        });
    }

</script>

</body>
</html>