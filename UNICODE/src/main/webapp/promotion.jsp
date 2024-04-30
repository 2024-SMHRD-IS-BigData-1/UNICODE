<%@page import="com.smhrd.model.Contest"%>
<%@page import="com.smhrd.model.ContestDAO"%>
<%@page import="com.smhrd.model.Portfolio"%>
<%@page import="com.smhrd.model.PortfolioDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.UserDAO"%>
<%@page import="com.smhrd.model.Profil"%>
<%@page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <title>UnicodeProfmotion</title>
    <link rel="stylesheet" href="assets/css/Main.css"/>
    <link rel="stylesheet" href="assets/css/promotion.css"/>
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
       
    %>
    <%
    List<User> userList = new UserDAO().UserList();
    %>

    <!-- 상단 배너 시작 -->
    <div style="background-color: #abb5e763; max-width: 1440px; margin: 0 auto; border-radius: 20px;">
	    <a class="pick_banner" href="">
	        <div class="wrap">
	            <div class="banner_text">
	                <p>쉽고 빠른 창업 토탈 패키지</p>
	                <p class="sub">더 이상 고민하지 마세요. 이미 많은 분들이 경험했습니다.</p>
	            </div>
	            <img class="banner_img" src="assets/img/포켓몬1.jpg">
	            <div class="banner_button">자세히 보기</div>
	        </div>
	    </a>
	</div>
    <!-- 상단 배너 끝 -->

    <!-- 사이드바 시작 -->
<div class="wrap">
    <div style="height: 50px;"></div>
    <div style="width: 1300px; margin: 0 auto;">
        <div  style="float: left; margin-right: 25px; font-size: x-small;">
            <h4>선호 프로젝트 형태</h4>
            <tr>
                <td>
                    <input type="checkbox" name="project" value="외주(도급)">외주(도급)
                    <br>
                    <input type="checkbox" name="project" value="기간제(상주)">기간제(상주)
                </td>
            </tr>
            <hr class="divider-line" />
            <h4>직종</h4>
            <tr>
                <td>
                    <input type="checkbox" name="project" value="개발">개발
                    <br>
                    <input type="checkbox" name="project" value="디자인">디자인
                    <br>
                    <input type="checkbox" name="project" value="기획">기획
                </td>
            </tr>
            <hr class="divider-line" />
            <h4>지역</h4>
            <tr style="color:#7a7575">
                <td>
                    <select class="region" style="color: #616161;">
                        <option>서울</option>
                        <option>인천</option>
                        <option>대전</option>
                        <option>대구</option>
                        <option>울산</option>
                        <option>부산</option>
                        <option>광주</option>
                        <option>세종</option>
                    </select>
                </td>
            </tr>
        </div>

        <!-- 개발자 정보 시작 -->
        <div class="promotion-list">

			<%-- <div class="member-listup">
                <div class="member-border">
                    <a href="./promo_detail.html?id=2"><img class="img1-1" src="/img/포켓몬2.png"></a>
                </div>
                <div>
                    <a href="./promo_detail.html?id=2">
                        <h3 style="margin: 8px;"><%=profil.getU_id() %></h3>
                        <div>☆☆☆☆☆ <b>0</b> / <span class="text-small">평가 0개</span></div>
                        <div style="display: flex; width: 300px; justify-content: space-between; margin: 8px;">
                            <div>계약한 프로젝트</div>
                            <div><b>0</b><span class="text-small">건</span></div>
                        </div>
                        <div style="display: flex; width: 300px; justify-content: space-between; margin: 8px;">
                            <div>포트폴리오</div>
                            <div><b><%=portfolioList.size() %></b><span class="text-small">개</span></div>
                        </div>
                    </a>
                </div>
            </div> --%>
			
		  	<%
			for(User u : userList){ %>
				
			<%List<Portfolio> portfolioList = new PortfolioDAO().portfolioList1(u.getU_id()); 
			   List<Contest> contestList = new ContestDAO().WinnerContest(u.getU_id());%>
	            <div class="member-listup">
	                <div class="member-border">
	                    <a href="./promo_detail.html?id=2"><img class="img1-1" src="/assets/image/<%=profil.getProfile_img() %>"></a>
	                </div>
	                <div>
	                    <a href="./promo_detail.html?id=2">
	                        <h3 style="margin: 8px;"><%=u.getU_id() %></h3>
	                        <div>☆☆☆☆☆ <b>0</b> / <span class="text-small">평가 0개</span></div>
	                        <div style="display: flex; width: 300px; justify-content: space-between; margin: 8px;">
	                            <div>우승한 콘테스트</div>
	                            <div><b><%=contestList.size() %></b><span class="text-small">건</span></div>
	                        </div>
	                        <div style="display: flex; width: 300px; justify-content: space-between; margin: 8px;">
	                            <div>포트폴리오</div>
	                            <div><b><%=portfolioList.size() %></b><span class="text-small">개</span></div>
	                        </div>
	                    </a>
	                </div>
	            </div>
      			
            <%
            
            }%>
             
            <!-- 개발자 정보 끝 -->

            <!-- 페이지 네비게이션을 위한 div 추가 -->
            <div id="pagination"></div>

        </div>
    </div>
    </div>
</div>

<!-- 페이징 -->
<script src="assets/js/promotion_page.js"></script>
<script src="assets/js/checkbox.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // URL에서 'id' 값을 가져옵니다.
        const urlParams = new URLSearchParams(window.location.search);
        const id = urlParams.get('id'); // 'id' 쿼리 스트링의 값을 얻습니다.
    
        // 이 'id' 값을 사용하여 해당하는 포켓몬의 상세 정보를 페이지에 표시합니다.
        // 예를 들어, 'id'에 따라 다른 이미지나 텍스트를 보여주는 등의 작업을 할 수 있습니다.
    });
    </script>
    






</body>
</html>