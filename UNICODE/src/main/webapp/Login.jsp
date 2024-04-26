
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
	    <div class="login-wrapper">
        <h2>UNICODE 로그인</h2>
        <form method="post" action="LoginService" id="login-form">
            <input type="text" name="id" placeholder="아이디">
            <input type="password" name="pw" placeholder="비밀번호">
            <label for="remember-check">
                <input type="checkbox" id="remember-check">아이디 저장
            </label>
            <input type="submit" value="로그인">
            <a href="Join.jsp">회원가입</a>
            <div>
			    <h1>로그인</h1>
			    <a href="javascript:kakaoLogin()"><img src="assets/img/kakao_login.png"></a>
			    
			</div>
        </form>
         <form id="kakaoLoginForm" action="KakaoJoinService" method="POST" style="display: none;">
		    <input type="hidden" name="id" />
		    <input type="hidden" name="email" />
		    <input type="hidden" name="name" />
		    <input type="hidden" name="phoneNumber" />
		 </form>
        
    </div>
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