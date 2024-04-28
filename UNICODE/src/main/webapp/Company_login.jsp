<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UnicodeCompanyLogin</title>
	<link rel="stylesheet" href="assets/css/Join.css">
</head>
<body>
	    <div class="login-wrapper">
        <h2>UNICODE 로그인</h2>
        <form method="post" action="C_LoginService" id="login-form">
            <input type="text" name="id" placeholder="아이디">
            <input type="password" name="pw" placeholder="비밀번호">
            <label for="remember-check">
                <input type="checkbox" id="remember-check">아이디 저장
            </label>
            <input type="submit" value="로그인">
            <a href="Company_join.jsp">회원가입</a>
        </form>
    </div>
</body>
</html>