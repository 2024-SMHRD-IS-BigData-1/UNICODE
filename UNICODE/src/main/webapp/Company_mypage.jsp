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
    <div id="header"></div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#header").load("header.jsp");
    });
    </script>
    
    <!-- 사용자 정보 시작 -->
    <div class="wrap" style="width: 1080px;">
        <div class="profile-box-wrapper" style="display: flex; justify-content: space-between; align-items: center;">
            <div style="display: flex; align-items: center;">
                <div class="profile-img">
                    <img class="user-img" src="/img/포켓몬4.jpg" alt="프로필 이미지" style="width: 100%;">
                </div>
                <div>
                    <div class="profile-title">
                        <span style="font-size: x-large;">company</span>
                    </div>
                </div>
            </div>
            <div id="header-button">
                <a href="Company_mypage_modify.jsp">
                    <div class="mypage-modify">수정</div>
                </a>
            </div>
        </div>
        <!-- 사용자 정보 끝 -->


<!-- 마이페이지 시작 -->
<div class="mypage">
    <!-- 등록한 콘테스트 시작 -->
    <div style="margin-left: 10px; padding: 30px 0 0 30px;"><b>완료된 콘테스트</b></div>
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
    <!-- 등록한 콘테스트 끝 -->

    <div class="divider-hr"></div>

    <!-- 등록중인 콘테스트 시작 -->
    <div style="margin-left: 10px; padding-left: 30px;"><b>진행중인 콘테스트</b></div>
    <div class="project-continue">
        <div style="width: 100%;">
            <div style="justify-content: space-between; display: flex;">
                <div style="display: flex;">
                    <div style="height:155px;">
                        <img src="/img/contest_img1.jpg" alt="" style="height:100%; border-radius: 5px;">
                    </div>
                    <div style="padding-left: 10px;">
                        <div style="margin: 30px 10px 20px 10px;">
                            <b>IOT 스마트 펌웨어 개발</b>
                        </div>
                        <div style="display: flex;">
                            <div style="margin-bottom: 10px;"><span style="padding-left: 15px; font-size: smaller;"><b>사용기술</b></span></div>
                        </div>
                        <div style="display: flex; margin-left: 10px;">
                            <div class="used-skill"><img class="skill-img" src="/img/skill/java.png"><div class="skill-name">JAVA</div></div>
                            <div class="used-skill"><img class="skill-img" src="/img/skill/c_plus_plus.png"><div class="skill-name">C++</div></div>
                            <div class="used-skill"><img class="skill-img" src="/img/skill/html.png"><div class="skill-name">HTML</div></div>
                        </div>
                    </div>
                </div>
                <div style="padding: 0 30px; margin-top: 30px;">
                    <div style="margin-bottom: 17px; display: flex;">
                        <div style="margin-right: 5px;"><b>상금</b></div><span style="font-size: smaller; margin-right: 5px;">2,500,000</span>
                    </div>
                    <div style="margin-bottom: 17px;">
                        <b>참여인원 </b><span style="font-size: smaller; margin-left: 5px;">15명</span>
                    </div>
                    <div style="margin-bottom: 17px;">
                        <div class="end-period">
                            <b>종료일</b><span style="font-size: smaller; margin-left: 7px;">24.07.12</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="project-continue">
        <div style="width: 100%;">
            <div style="justify-content: space-between; display: flex;">
                <div style="display: flex;">
                    <div style=" height: 155px;">
                        <img src="/img/contest_img2.jpg" alt="" style="height: 100%; border-radius: 5px;">
                    </div>
                    <div style="padding-left: 10px;">
                        <div style="margin: 30px 10px 20px 10px;">
                        <b>IOT 스마트 펌웨어 개발</b>
                        </div>
                        <div style="display: flex;">
                            <div style="margin-bottom: 10px;"><span style="padding-left: 15px; font-size: smaller;"><b>사용기술</b></span></div>
                        </div>
                        <div style="display: flex; margin-left: 10px;">
                            <div class="used-skill"><img class="skill-img" src="/img/skill/java.png"><div class="skill-name">JAVA</div></div>
                            <div class="used-skill"><img class="skill-img" src="/img/skill/c_plus_plus.png"><div class="skill-name">C++</div></div>
                            <div class="used-skill"><img class="skill-img" src="/img/skill/html.png"><div class="skill-name">HTML</div></div>
                        </div>
                    </div>
                </div>
                <div style="padding: 0 30px; margin-top: 30px;">
                    <div style="margin-bottom: 17px; display: flex;">
                        <div style="margin-right: 5px;"><b>상금</b></div><span style="font-size: smaller; margin-right: 5px;">2,500,000</span>
                    </div>
                    <div style="margin-bottom: 17px;">
                        <b>참여인원 </b><span style="font-size: smaller; margin-left: 5px;">15명</span>
                    </div>
                    <div style="margin-bottom: 17px;">
                        <div class="end-period">
                            <b>종료일</b><span style="font-size: smaller; margin-left: 7px;">24.07.12</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 등록중인 콘테스트 끝-->
    <div class="divider-hr"></div>
</div>

        <!-- 마이페이지 끝 -->
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
        
        
    </div>
</body>
</html>