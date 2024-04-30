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
                    <img class="user-img" src="assets/img/profile_img.jpeg" alt="프로필 이미지" style="width: 100%;">
                </div>
                <div>
                    <div class="profile-title">
                        <span style="font-size: x-large;">스마트인재개발원</span>
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
    <div style="display: flex; padding: 50px 20px;">
        
        </div>
        
    </div>
    <!-- 등록한 콘테스트 끝 -->

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