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
	    <div class="login-wrapper" style="margin-top:100px;">
        <h2>UNICODE 기업 로그인</h2>
        <form method="post" action="C_LoginService" id="login-form">
            <input type="text" name="id" placeholder="아이디">
            <input type="password" name="pw" placeholder="비밀번호">
           
            <input type="submit" value="로그인">
            <a href="Company_join.jsp" class="join">회원가입</a>
        </form>
    </div>
</body>
</html>