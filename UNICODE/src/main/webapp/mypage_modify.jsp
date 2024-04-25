<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/Main.css"/>
    <link rel="stylesheet" href="assets/css/mypage.css"/>
</head>

<body>
    <header>
        <div id="logo_menu" class="wrap">
            <div id="logo_img">
                <a href="../main.html">
                    <img src="/img/logo.png"> 
                </a>
            </div>
            <div id="search_box">           
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input id="search-input" type="text" name="search-input" placeholder="  검색어를 입력하세요.">
                
            </div>
            <div class="menu_cont">
                <ul id="menu">
                    <li><a href="#">코딩 페스티벌</a></li>
                    <li><a href="/프로모션/promotion.html">개발자 찾기</a></li>
                    <li><a href="#">커뮤니티</a></li>
                    <li><a href="mypage.html">마이페이지</a></li>
                </ul>
            </div>
        </div>
    </header>
    
    <!-- 사용자 정보 시작 -->
    <div class="wrap" style="width: 1080px;">
        <div class="profile-box-wrapper" style="display: flex; justify-content: space-between; align-items: center;">
            <div style="display: flex; align-items: center;">
                <div class="profile-img">
                    <img class="user-img" src="/img/profile_img.jpeg" alt="프로필 이미지" style="cursor: pointer; width: 160px;">
                </div>
                <div>
                    <div class="profile-title">
                        <input class="profile-username" type="text" value="jackson"></input> <!-- value값은 원래 저장되어 있던 사용자 이름 --> 
                    </div>
                    <div class="profile-subtitle">
                        <div style="display: flex;">
                        <div class="icon-badge">
                            <div><input type="checkbox" class="profile-filed"><i class="fa-solid fa-laptop"></i> 개발</div>
                            <div><input type="checkbox" class="profile-filed"><i class="fa-solid fa-pen-nib"></i> 디자인</div>
                            <div><input type="checkbox" class="profile-filed"><i class="fa-regular fa-note-sticky"></i> 기획</div>
                        </div>
                        <div class="icon-badge">
                            <i class="fa-regular fa-folder"></i>
                            <input type="text" class="profile-folder" placeholder="영역을 입력하세요. ex) web" style="font-size: xx-small;">
                        </div>
                        <div class="icon-badge">
                            <i class="fa-solid fa-location-dot"></i>
                            <select class="region" name="region" style="font-size: x-small; margin-top: 2px; color: #5b5858;">
                                <option>서울</option>
                                <option>인천</option>
                                <option>대전</option>
                                <option>대구</option>
                                <option>울산</option>
                                <option>부산</option>
                                <option>광주</option>
                                <option>세종</option>
                            </select>
                        </div>
                        <div class="icon-badge">
                            <div><input type="checkbox"> 외주 선호</div>
                            <div><input type="checkbox"> 기간제 선호</div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="header-button">
                <a href="modifyService">
                    <div class="mypage-modify">확인</div>
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
                        <div><b>309</b><span class="text-small">건</span></div>
                    </div>
                        <div style="font-size: xx-small; margin-left: 10px;">웹 : 48% 안드로이드 : 23% iOS : 20% 기타 : 6%</div>
                </div>
            </div>
        </div>
        <!-- 사용자 평점 끝 -->


        <!-- 마이페이지 시작 -->
        <div class="mypage">
            <!-- 포트폴리오 시작 -->
            <div style="display: flex; justify-content: space-between; font-size: small; padding-left: 30px;">
                <div style="margin: 30px 30px 30px 10px;"><b>포트폴리오</b></div>
                <div style="margin: 20px 50px;"><a href="./mypage_modify_port.html"><button class="more-btn">더보기 >> </button></a></div>
            </div>
            <div class="port-list">
                <div>
                    <div class="port-list-img">
                        <img src="/img/포켓몬1.jpg" alt="">
                    </div>
                    <div class="port-list-text">
                        <div style="font-size: large; margin-bottom: 10px;">
                            <b>제목1</b>
                        </div>
                        <div>
                            내용1
                        </div>
                    </div>
                </div>
                <div>
                    <div class="port-list-img">
                        <img src="/img/포켓몬1.jpg" alt="">
                    </div>
                    <div class="port-list-text">
                        <div style="font-size: large; margin-bottom: 10px;">
                            <b>제목1</b>
                        </div>
                        <div>
                            내용1
                        </div>
                    </div>
                </div>
                <div>
                    <div class="port-list-img">
                        <img src="/img/포켓몬1.jpg" alt="">
                    </div>
                    <div class="port-list-text">
                        <div style="font-size: large; margin-bottom: 10px;">
                            <b>제목1</b>
                        </div>
                        <div>
                            내용1
                        </div>
                    </div>
                </div>
            </div>
            <div class="port-list">
                <div>
                    <div class="port-list-img">
                        <img src="/img/포켓몬1.jpg" alt="">
                    </div>
                    <div class="port-list-text">
                        <div style="font-size: large; margin-bottom: 10px;">
                            <b>제목1</b>
                        </div>
                        <div>
                            내용1
                        </div>
                    </div>
                </div>
                <div>
                    <div class="port-list-img">
                        <img src="/img/포켓몬1.jpg" alt="">
                    </div>
                    <div class="port-list-text">
                        <div style="font-size: large; margin-bottom: 10px;">
                            <b>제목1</b>
                        </div>
                        <div>
                            내용1
                        </div>
                    </div>
                </div>
                <div>
                    <div class="port-list-img">
                        <img src="/img/포켓몬1.jpg" alt="">
                    </div>
                    <div class="port-list-text">
                        <div style="font-size: large; margin-bottom: 10px;">
                            <b>제목1</b>
                        </div>
                        <div>
                            내용1
                        </div>
                    </div>
                </div>
            </div>
            <!-- 포트폴리오 끝 -->

            <div class="divider-hr"></div>

            <!-- 보유 기술 시작-->
            <div style="display: flex; justify-content: space-between; font-size: small; padding-left: 30px;">
                <div style="margin-left: 10px;"><b>보유 기술</b></div>
                <div style="display: flex;">
                    <div style="margin-right: 20px; font-size: smaller;">
                        <button class="add-btn" style="display: flex;">
                            <div><i class="fa-solid fa-plus fa-xs"></i></div>
                            <div style="font-size: xx-small; margin-left: 5px;">추가</div>
                        </button>
                    </div>
                    <div style="margin-right: 50px; font-size: smaller;">
                        <button class="add-btn" style="display: flex;">
                            <div><i class="fa-solid fa-minus fa-xs"></i></div>
                            <div style="font-size: xx-small; margin-left: 5px;">삭제</div>
                        </button>
                    </div>
                </div>
            </div>
            <div style="margin-top: 15px;">
                <div style="display: flex; justify-content: space-between; padding: 0 100px 0 100px; margin-bottom: 10px; text-align: center; align-items: center;">
                    <div class="tools-circle" style="font-size: small;">JAVA</div>
                    <div class="tools-circle" style="font-size: small;">C#</div>
                    <div class="tools-circle" style="font-size: small;">JAVA</div>
                    <div class="tools-circle" style="font-size: small;">JAVA</div>
                </div>
                <div style="display: flex; justify-content: space-between; padding: 0 100px 0 100px; margin-top: 10px; text-align: center;">
                    <div class="tools-circle" style="font-size: small;">C#</div>
                    <div class="tools-circle" style="font-size: small;">JAVA</div>
                    <div class="tools-circle" style="font-size: small;">JAVA</div>
                    <div class="tools-circle" style="font-size: small;">JAVA</div>
                </div>
            </div>
            <!-- 보유 기술 끝 -->

            <div class="divider-hr"></div>

            <!-- 우승한 콘테스트 시작 -->
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
            <!-- 우승한 콘테스트 끝 -->

            <div class="divider-hr"></div>

            <!-- 참여중인 콘테스트 시작 -->
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
                                <b>종료날짜 </b><span style="font-size: smaller; margin-right: 5px;">24.06.26</span>
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
                                <b>종료날짜 </b><span style="font-size: smaller; margin-right: 5px;">24.04.22</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 참여중인 콘테스트 끝-->
            <div class="divider-hr"></div>
        </div>

        <script>
            document.addEventListener('DOMContentLoaded', function() {
                // 'project-done' 클래스를 가진 모든 요소를 찾습니다.
                var projectDone = document.querySelectorAll('.project-done');
                // 찾은 요소의 개수를 구합니다.
                var count = projectDone.length;
                // 'project-done-count' ID를 가진 <span> 태그를 찾아서 개수로 업데이트합니다.
                document.querySelector('#project-done-count').textContent = count;
                
                // 'money-cnt' 클래스를 가진 모든 요소를 찾습니다.
                var moneyCounts = document.querySelectorAll('.money-cnt span');
                // 숫자를 더합니다.
                var total = 0;
                moneyCounts.forEach(function(span) {
                    // 쉼표를 제거하고 숫자로 변환한 뒤 total에 더합니다.
                    total += parseInt(span.textContent.replace(/,/g, ''));
                });
                // 'money-cnt-total' ID를 가진 <span>에 최종 합계를 표시합니다.
                document.querySelector('#money-cnt-total').textContent = total.toLocaleString();
            });
        </script>
        <!-- 마이페이지 끝 -->
    </div>
</body>
</html>