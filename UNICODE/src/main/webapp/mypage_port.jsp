<%@page import="java.awt.desktop.UserSessionListener"%>
<%@page import="com.smhrd.model.PortfolioDAO"%>
<%@page import="com.smhrd.model.Portfolio"%>
<%@page import="com.smhrd.model.User"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.Profil"%>
<%@page import="com.smhrd.model.UserDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UnicodeMypagePort</title>
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/Main.css"/>
    <link rel="stylesheet" href="assets/css/mypage_port.css"/>
    <link rel="stylesheet" href="assets/css/portfolio.css">
</head>

<body>
     <div id="header"></div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#header").load("header.jsp");
    });
    </script>
    <%Object loginUser = session.getAttribute("loginUser"); 
    	User user = (User)loginUser;
    %>
    <%
    Profil profil = new UserDAO().userprofil(user); 
       List<Portfolio> portfolioList = new PortfolioDAO().portfolioList(user);
    %>
    
    <!-- 사용자 정보 시작 -->
    <div class="wrap" style="width: 1080px;">
        <div class="profile-box-wrapper" style="display: flex; justify-content: space-between; align-items: center;">
            <div style="display: flex; align-items: center;">
                <div class="profile-img">
                    <img class="user-img" src="assets/image/<%=profil.getProfile_img() %>" alt="프로필 이미지">
                </div>
                <div>
  						<div><%=profil.getU_id() %></div>
                    <div class="profile-title">
                        <span class="profile-username"></span>
                    </div>
                    <div class="profile-subtitle">
                        <div class="icon-badge">
                            <i class="fa-solid fa-user"></i><%=profil.getProfile_name() %>
                        </div>
                        <div class="icon-badge">
                            <i class="fa-solid fa-code"></i><%=profil.getProfile_tech() %>
                        </div>
                        <div class="icon-badge">
                            <i class="fa-solid fa-location-dot"></i><%= profil.getProfile_region() %>
                        </div>
                        <div class="icon-badge">
                             <i class="fa-solid fa-house"></i><%= profil.getProfile_residence() %>
                        </div>
                    </div>
                </div>
            </div>
            <div id="header-button">
                <a href="mypage_port_s.jsp">
                    <div class="mypage-modify">수정</div>
                </a>
            </div>
        </div>
        <!-- 사용자 정보 끝 -->

        <!-- 마이페이지 시작 -->
        <div class="mypage">
            <div class="portfolio">
                <div class="menu-box-title">
                    <div class="sub-title">
                        포트폴리오
                    </div>
                </div>
                <div class="portfolio-view">
                    <section id="portfolio-list">
                        <div class="portfolio-list-wrap">
                            <div class="total-cnt">
                                <b>0</b>
                                개의 포트폴리오
                            </div>
                            <div class="edit-box">
                                <a href="./portfolio_modify.jsp" class="btn-link">
                                    <button class="portfolio-btn">
                                        포트폴리오 설정
                                    </button>
                                </a>
                                <a href="Portfolio.jsp" class="btn-link">
                                    <button class="portfolio-btn portfolio-add">
                                        포트폴리오 추가
                                    </button>
                                </a>
                            </div>
                            <div class="portfolio-item-list" style="margin-bottom:30px;">
                            	<!-- 포트폴리오 시작 -->
                            	
                            	<% int cnt=0;
                            	for(Portfolio p : portfolioList){
                            		%>
                            		<a class="portfolio-item">
                                    <div style="width: 100%; "><img src="assets/image/<%=p.getPort_file()%>" alt="" style="width: 100%; border-radius: 8px;"></div>
                                    <div class="portfolio-content-wrapper">
                                        <div class="portfolio-content-title"><%= p.getPort_title() %></div>
                                        <div class="caption-1">
                                            <span><%=p.getPort_range() %></span>
                                            <div class="seperator"></div>
                                            <span><%=p.getPort_category() %></span>
                                        </div>
                                    </div>
                                    <div class="portfolio-hover-overlay">
                                        <div class="portfolio-hover-content">자세히 보기</div>
                                    </div>
                                </a>
                                <%cnt++;
                                	if(cnt %3 == 0 && cnt < portfolioList.size()){
                                		
                                %>
                                	</div><div class="portfolio-item-list" style="margin-bottom:30px;">
                                
                                <% 	}
                            	}%>
                              
                                <!-- 포트폴리오 끝 -->
                               
                            </div>
                           
                            
                        </div>
                    </section>
                </div>
            </div>
            <div class="divider-hr"></div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // 'portfolio-item' 클래스를 가진 모든 요소를 찾습니다.
            var portfolioItems = document.querySelectorAll('.portfolio-item');
            
            // 찾은 요소의 개수를 구합니다.
            var count = portfolioItems.length;
            
            // 'total-cnt' 클래스 내부의 <b> 태그를 찾아서 개수로 업데이트합니다.
            document.querySelector('.total-cnt b').textContent = count;
        });
    </script>
    </div>
</body>
</html>