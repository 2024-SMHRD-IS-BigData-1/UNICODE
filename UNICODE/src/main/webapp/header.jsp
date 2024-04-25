<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.smhrd.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
        <div id="logo_menu" class="wrap">
            <div id="logo_img">
                <a href="Main.jsp">
                    <img src="assets/img/LOGO.png"> 
                </a>
            </div>
            <div id="search_box">           
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input id="search-input" type="text" name="search-input" placeholder="  검색어를 입력하세요.">
                
            </div>
			<%Object loginUser = session.getAttribute("loginUser"); %>
            <div class="menu_cont">
              <ul id="menu">
                  <li><a href="Contest.jsp">코딩 페스티벌</a></li>
                  <li><a href="./프로모션/promotion.html">개발자 찾기</a></li>
                  <li><a href="#">커뮤니티</a></li>
                  <% if(loginUser == null) { %>
                      <li><a href="Login.jsp">로그인/회원가입</a></li>
                  <% } else { 
                	  User user = (User)loginUser;
                  %>
                  	  
                      <li><a href="Portfolio.jsp">마이페이지</a></li>     
                      <li><a href="LogoutService">로그아웃</a></li>
                  <% } %>
              </ul>
          </div>
        </div>
	 </header>
</body>
</html>