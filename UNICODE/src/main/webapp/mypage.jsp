<%@page import="com.smhrd.model.Portfolio"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.Profil"%>
<%@page import="com.smhrd.model.PortfolioDAO"%>
<%@page import="com.smhrd.model.UserDAO"%>
<%@page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UnicodeMypage</title>
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/Main.css"/>
    <link rel="stylesheet" href="assets/css/mypage.css"/>
    <link rel="stylesheet" href="assets/css/mypage_port.css"/>
    <link rel="stylesheet" href="assets/css/portfolio.css">
    <style type="text/css">
    .portfolio{
    	min-height: 0 !important
    }
    </style>
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
                    <img class="user-img" src="assets/image/<%=profil.getProfile_img() %>" alt="프로필 이미지" style="width: 160px;">
                </div>
                <div>
                    <div class="profile-title">
                        <span class="profile-username"><%=profil.getProfile_name() %></span>
                    </div>
                    <div class="profile-subtitle">
                        <div class="icon-badge">
                            <i class="fa-solid fa-envelope"></i><%=user.getU_email() %>
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
                <a href="mypage_modify.jsp">
                    <div class="mypage-modify">수정</div>
                </a>
            </div>
        </div>
        <!-- 사용자 정보 끝 -->


        <!-- 사용자 평점 시작 -->
        <div class="profile-box-wrapper">
            <div style="display: flex; justify-content: space-between; align-items: center; padding: 20px;">
                <div>
                    <div style="margin-left: 5px; margin-bottom: 8px; margin-top: 8px;">⭐⭐⭐⭐⭐ <b>4.98</b> / <span class="text-small">평가 210개</span></div>
                    <div style="font-size: xx-small; margin-left: 10px; ">적극성 : 4.99 완성도 : 5.00 만족도 : 5.00 피드백 : 4.97</div>
                </div>
                <div>
                    <div style="display: flex; width: 300px; margin: 8px;">
                        <div style="margin-right: 10px;">우승한 콘테스트</div>
                        <div class="total-project-done2"><b><span span id="project-done-count2"></span></b>건</div>
                    </div>
                        <div style="font-size: xx-small; margin-left: 10px;">웹 : 48% 안드로이드 : 23% iOS : 20% 기타 : 6%</div>
                </div>
            </div>
        </div>
        <!-- 사용자 평점 끝 -->


        <!-- 마이페이지 시작 -->
        <div class="mypage">
            <div style="display: flex; justify-content: space-between; font-size: small; padding-left: 30px;">
                <div style="margin: 30px 30px 30px 10px;"><b>포트폴리오</b></div>
                <div style="margin: 20px 50px;"><a href="mypage_port.jsp"><button class="more-btn">더보기 >> </button></a></div>
            </div>
            <div class="portfolio">
                
                <div class="portfolio-view">
                    <section id="portfolio-list">
                        <div class="portfolio-list-wrap">
                            <div class="portfolio-item-list" style="margin-bottom:30px;">
                            	<!-- 포트폴리오 시작 -->
                            	
                            	<% int cnt=0;
                            	for(Portfolio p : portfolioList){
                            		cnt++;
                            		if(cnt<=6){
                            			
                            		
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
                                <%
                                	if(cnt %3 == 0 && cnt < portfolioList.size()){
                                		
                                %>
                                	</div><div class="portfolio-item-list" style="margin-bottom:30px;">
                                
                                <% 	}
                            	}
                            	}%>
                              
                                <!-- 포트폴리오 끝 -->
                               
                            </div>
                           
                            
                        </div>
                    </section>
                </div>
            </div>

            <div class="divider-hr"></div>
            <div style="margin-left: 10px; padding-left: 30px;"><b>보유 기술</b></div>
			<div style="margin-top: 15px;">
			    <div style="display: flex; justify-content: space-between; padding: 0 100px 0 100px; margin-bottom: 10px; text-align: center; align-items: center;">
			        <% 
			        String[] userTechs = profil.getProfile_tech().split(",");
			        for (int i = 0; i < 4; i++) {
			            if (i < userTechs.length) {
			                %>
			                <div class="tools-circle" style="font-size: small;"><%= userTechs[i] %></div>
			                <%
			            } else {
			                %>
			                <div class="tools-circle" style="font-size: small;"></div>
			                <%
			            }
			        }
			        %>
			    </div>
			    <div style="display: flex; justify-content: space-between; padding: 0 100px 0 100px; margin-top: 10px; text-align: center;">
			        <% 
			        for (int i = 4; i < 8; i++) {
			            if (i < userTechs.length) {
			                %>
			                <div class="tools-circle" style="font-size: small;"><%= userTechs[i] %></div>
			                <%
			            }
			        }
			        %>
			    </div>
			</div>
            <div class="divider-hr"></div>
            <div style="margin-left: 10px; padding-left: 30px;"><b>우승한 콘테스트</b></div>
            <div style="display: flex; justify-content: space-between; margin-top: 30px; padding: 0 200px 0 200px; text-align: center; align-items: center;">
                <div>
                    <div class="total-money-cnt">
                        <div style="font-size: larger; margin-bottom: 10px;"><b>누적 상금</b></div>
                        <span id="money-cnt-total"></span>원
                    </div>
                </div>
                <div>
                    <div class="total-project-done">
                        <div style="font-size: larger; margin-bottom: 10px;"><b>우승한 콘테스트</b></div>
                        <span id="project-done-count"></span>건
                    </div>
                </div>
            </div>
            <div>
                <div style="display: flex; padding: 0 20px;">
                    <div class="contest-list">
                        <div name="cnt_file">
                            <img src="/img/contest_img1.jpg" alt="" style="width: 100%;">
                        </div>
                        <div class="project-done">
                            <div style="width: 100%; padding-left: 10px; margin: 10px;">
                                <div style="margin-bottom: 10px;" name="cnt_title"><b>IOT 스마트 펌웨어 개발</b></div>
                                <div class="money-cnt" name="cnt_money" style=" margin-bottom: 10px; font-size: smaller;">
                                    <b>상금 </b><span style="font-size: smaller; margin-right: 5px;">2,500,000</span>
                                </div>
                                <div style="font-size: smaller;"><b>사용 기술</b></div> 
                                <div style="display: flex; ">
                                    <div name="cnt_skill" class="used-skill"><img class="skill-img" src="/img/skill/java.png"><div class="skill-name">JAVA</div></div>
                                    <div name="cnt_skill" class="used-skill"><img class="skill-img" src="/img/skill/c_plus_plus.png"><div class="skill-name">C++</div></div>
                                    <div name="cnt_skill" class="used-skill"><img class="skill-img" src="/img/skill/html.png"><div class="skill-name">HTML</div></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contest-list">
                        <div>
                            <img src="/img/contest_img2.jpg" alt="" style="width: 100%;">
                        </div>
                        <div class="project-done">
                            <div style="width: 100%; padding-left: 10px; margin: 10px;">
                                <div style="margin-bottom: 10px;"><b>IOT 스마트 펌웨어 개발</b></div>
                                <div class="money-cnt" style="margin-bottom: 10px; font-size: smaller;">
                                    <b>상금 </b><span style="font-size: smaller; margin-right: 5px;">2,500,000</span>
                                </div>
                                <div style="font-size: smaller;"><b>사용 기술</b></div> 
                                <div style="display: flex; ">
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/java.png"><div class="skill-name">JAVA</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/c_plus_plus.png"><div class="skill-name">C++</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/html.png"><div class="skill-name">HTML</div></div>
                                </div>
                            </div>
                        </div>
                    </div><div class="contest-list">
                        <div>
                            <img src="/img/contest_img3.jpg" alt="" style="width: 100%;">
                        </div>
                        <div class="project-done">
                            <div style="width: 100%; padding-left: 10px; margin: 10px;">
                                <div style="margin-bottom: 10px;"><b>IOT 스마트 펌웨어 개발</b></div>
                                <div class="money-cnt" style="margin-bottom: 10px; font-size: smaller;">
                                    <b>상금 </b><span style="font-size: smaller; margin-right: 5px;">2,500,000</span>
                                </div>
                                <div style="font-size: smaller;"><b>사용 기술</b></div> 
                                <div style="display: flex; ">
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/java.png"><div class="skill-name">JAVA</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/c_plus_plus.png"><div class="skill-name">C++</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/html.png"><div class="skill-name">HTML</div></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div style="display: flex; padding: 0 20px;">
                    <div class="contest-list">
                        <div>
                            <img src="/img/contest_img1.jpg" alt="" style="width: 100%;">
                        </div>
                        <div class="project-done">
                            <div style="width: 100%; padding-left: 10px; margin: 10px;">
                                <div style="margin-bottom: 10px;"><b>IOT 스마트 펌웨어 개발</b></div>
                                <div class="money-cnt" style=" margin-bottom: 10px; font-size: smaller;">
                                    <b>상금 </b><span style="font-size: smaller; margin-right: 5px;">2,500,000</span>
                                </div>
                                <div style="font-size: smaller;"><b>사용 기술</b></div> 
                                <div style="display: flex; ">
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/java.png"><div class="skill-name">JAVA</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/c_plus_plus.png"><div class="skill-name">C++</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/html.png"><div class="skill-name">HTML</div></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contest-list">
                        <div>
                            <img src="/img/contest_img2.jpg" alt="" style="width: 100%;">
                        </div>
                        <div class="project-done">
                            <div style="width: 100%; padding-left: 10px; margin: 10px;">
                                <div style="margin-bottom: 10px;"><b>IOT 스마트 펌웨어 개발</b></div>
                                <div class="money-cnt" style="margin-bottom: 10px; font-size: smaller;">
                                    <b>상금 </b><span style="font-size: smaller; margin-right: 5px;">2,500,000</span>
                                </div>
                                <div style="font-size: smaller;"><b>사용 기술</b></div> 
                                <div style="display: flex; ">
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/java.png"><div class="skill-name">JAVA</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/c_plus_plus.png"><div class="skill-name">C++</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/html.png"><div class="skill-name">HTML</div></div>
                                </div>
                            </div>
                        </div>
                    </div><div class="contest-list">
                        <div>
                            <img src="/img/contest_img3.jpg" alt="" style="width: 100%;">
                        </div>
                        <div class="project-done">
                            <div style="width: 100%; padding-left: 10px; margin: 10px;">
                                <div style="margin-bottom: 10px;"><b>IOT 스마트 펌웨어 개발</b></div>
                                <div class="money-cnt" style="margin-bottom: 10px; font-size: smaller;">
                                    <b>상금 </b><span style="font-size: smaller; margin-right: 5px;">2,500,000</span>
                                </div>
                                <div style="font-size: smaller;"><b>사용 기술</b></div> 
                                <div style="display: flex; ">
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/java.png"><div class="skill-name">JAVA</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/c_plus_plus.png"><div class="skill-name">C++</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/html.png"><div class="skill-name">HTML</div></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="divider-hr"></div>
            <div style="margin-left: 10px; padding-left: 30px;"><b>참여중인 콘테스트</b></div>
            <div class="project-continue">
                <div style="width: 100%;">
                    <div style="justify-content: space-between; display: flex;">
                        <div style="display: flex;">
                            <div style="border-right: 0.5px solid rgba(0,0,0,.2);">
                                <img src="/img/기업1.png" alt="" style="padding: 0 12.5px; max-height:150px">
                            </div>
                            <div style="margin-right:40px;">
                                <div style="margin: 30px 10px 20px 10px; padding-left: 10px;"><b>IOT 스마트 펌웨어 개발</b></div>
                                <div style="margin-bottom: 10px;"><span style="padding-left: 15px; font-size: smaller;"><b>사용기술</b></span></div>
                                <div style="display: flex;">
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/java.png"><div class="skill-name">JAVA</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/c_plus_plus.png"><div class="skill-name">C++</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/html.png"><div class="skill-name">HTML</div></div>
                                </div>
                            </div>
                        </div>
                        <div style="padding: 0 20px; margin-top: 30px;">
                            <div style="margin-bottom: 17px;">
                                <b>상금 </b><span style="font-size: smaller; margin-right: 5px;">2,500,000</span>
                            </div>
                            <div style="margin-bottom: 17px;">
                                <b>참여인원 </b><span style="font-size: smaller; margin-right: 5px;">25명</span>
                            </div>
                            <div style="margin-bottom: 17px;">
                                <b>종료날짜 </b><span style="font-size: smaller; margin-right: 5px;">24.02.14</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="project-continue">
                <div style="width: 100%;">
                    <div style="justify-content: space-between; display: flex;">
                        <div style="display: flex;">
                            <div style="border-right: 0.5px solid rgba(0,0,0,.2);">
                                <img src="/img/포켓몬2.png" alt="" style="padding: 0 12.5px; max-height:150px">
                            </div>
                            <div style="margin-right:40px;">
                                <div style="margin: 30px 10px 20px 10px; padding-left: 10px;"><b>IOT 스마트 펌웨어 개발</b></div>
                                <div style="margin-bottom: 10px;"><span style="padding-left: 15px; font-size: smaller;"><b>사용기술</b></span></div>
                                <div style="display: flex;">
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/java.png"><div class="skill-name">JAVA</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/c_plus_plus.png"><div class="skill-name">C++</div></div>
                                    <div class="used-skill"><img class="skill-img" src="/img/skill/html.png"><div class="skill-name">HTML</div></div>
                                </div>
                            </div>
                        </div>
                        <div style="padding: 0 20px; margin-top: 30px;">
                            <div style="margin-bottom: 17px;">
                                <b>상금 </b><span style="font-size: smaller; margin-right: 5px;">2,500,000</span>
                            </div>
                            <div style="margin-bottom: 17px;">
                                <b>참여인원 </b><span style="font-size: smaller; margin-right: 5px;">15명</span>
                            </div>
                            <div style="margin-bottom: 17px;">
                                <b>종료날짜 </b><span style="font-size: smaller; margin-right: 5px;">24.03.17</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="divider-hr"></div>
        </div>
        <!-- 마이페이지 끝 -->
        <script src="./project-done-count.js"></script>
    </div>
</body>
</html>