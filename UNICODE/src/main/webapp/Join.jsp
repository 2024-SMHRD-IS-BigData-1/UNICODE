<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/Join.css">
    <link rel="icon" href="./">
</head>
<body>
    <div class="join-wrapper">
        <form class="join-form" action="#">
            <h2>UNICODE 회원가입</h2>
            <!-- 아이디 -->
            <div id="join-id">
                <input type="text" placeholder="아이디 입력">
                <button>중복 확인</button>
            </div>
            <span class="error_id"></span>
    
            <!-- 비밀번호 -->
            <div id="join-pw">
                <input type="password" placeholder="비밀번호 입력">
            </div>
    
            <!-- 비밀번호 확인 -->
            <div id="join-repw">
                <input type="password" placeholder="비밀번호 재입력">
            </div>
            <span class="error_pw"></span>
    
            <!-- 이메일 -->
            <div id="join-email">
                <input type="text" id="join-email2" placeholder="이메일 입력">
            </div>
            
            <!-- 이름 -->
            <div id="join-name">
                <input type="name" placeholder="이름 입력">
            </div>
    
            <!-- 전화번호 -->
            <div id="join-tel">
                <input type="tel" placeholder="전화번호 입력">
            </div>
    
            <!-- 주소 -->
            <div id="join-address">
                <input type="text" placeholder="지역 입력">
            </div>

            <label for="join-check">
                <input type="checkbox" id="join-check"> 이용약관 동의
                <b><a href="https://www.google.com/search?q=%EA%B7%B8%EB%83%A5+%EB%A7%8C%EB%93%A4%EC%96%B4%EB%B4%84&oq=%EA%B7%B8%EB%83%A5+%EB%A7%8C%EB%93%A4%EC%96%B4%EB%B4%84&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIJCAEQIRgKGKAB0gEJMzA3OGowajE1qAIIsAIB&sourceid=chrome&ie=UTF-8" id="join-check-s">이용약관 보기</a></b>
            </label>

            <div id="join-btn" style="margin-top: 13px;">
                <input type="button" value="가입하기">
            </div>
        </form>

    </div>

</body>
</html>