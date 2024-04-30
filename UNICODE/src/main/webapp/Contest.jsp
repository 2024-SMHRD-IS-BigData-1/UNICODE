<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.ContestDAO"%>
<%@page import="com.smhrd.model.Contest"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <title>UnicodeContestpage</title>
    <link rel="stylesheet" href="assets/css/contest.css"/>
    <link rel="stylesheet" href="assets/css/Main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style type="text/css">
    .contest-info div {
        white-space: nowrap; /* 텍스트를 한 줄로 만듬 */
        overflow: hidden; /* 넘치는 내용을 숨김 */
        text-overflow: ellipsis; /* 넘치는 내용을 ...으로 표시 */
        max-width: 300px; /* 최대 너비 설정, 필요에 따라 조정 */
    }
    </style>
</head>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<body>
    <div id="header"></div>
    <script>
    $(document).ready(function(){
        $("#header").load("header.jsp");
    });
    </script>
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
    
    <main id="contest">
        <!-- 기업아이디가 null이 아니라면 공모하기 버튼 나타내기 -->
    <% if (session.getAttribute("loginCompany")!= null) {%>
    <div id="contest-write"><a href="ContestWrite.jsp">공모하기</a></div>    	
    <%}%>
        <section id="area">
            <aside class="side_bar"> 
                <div class="state_title" type="box">
                    <div class="state sidetitle">상태</div>
                    <div class="list-bar" style="height: 129px;">
                        <div class="description">
                        	<label class="recruit">
                                <input type="radio" class="checkbutton" name="recruit" id="radio-all" value="recruit">                                
                                <div class="radio_label">전체</div>
                            </label>
                            <label class="recruit">
                                <input type="radio" class="checkbutton" name="recruit" id="radio-recruit" value="recruit">                                
                                <div class="radio_label">진행중</div>
                            </label>
                            <label class="end">
                                <input type="radio" class="checkbutton" name="recruit" id="radio-end" value="end">                                
                                <div class="radio_label">종료</div>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="prize_title" type="box">
                    <div class="prize sidetitle">상금</div>
                    <div class="list-bar" style="height: 129px;">
                        <div class="description">
                            <label class="small">
                                <input type="radio" class="checkbutton" name="money" id="small-money" value="">
                                <div class="radio_label">30만원 이하</div>
                            </label>
                            <label class="middle">
                                <input type="radio" class="checkbutton" name="money" id="middle-money" value="">
                                <div class="radio_label">30만원~ 100만원</div>
                            </label>
                            <label class="large">
                                <input type="radio" class="checkbutton" name="money" id="large-money" value="">
                                <div class="radio_label">100만원 이상</div>
                            </label>
                        </div>
                    </div>
                </div>
            </aside>
			<div class="list-wrapper">
			    <article class="contest-box">
			        <ul>
			            <!-- 내용들어가는부분 -->
			        </ul>
			        <div class="pagination">
			            <i class="fa-solid fa-arrow-left"></i>
			            <ol id="numbers">
			            </ol>
			            <i class="fa-solid fa-arrow-right"></i>
			        </div>
			    </article>
			</div>

        </section>
    </main>
    
    
<script type="text/javascript">
$(document).ready(function() {
    // 체크박스 변경 이벤트에 filterContests 함수를 바인딩
    $('#radio-recruit, #radio-end, #small-money, #middle-money, #large-money').change(filterContests);

    // 페이지 로드 시 기본 콘테스트 목록 로드
    filterContests();
});

function filterContests() {
    console.log("filterContests function called");
    var isActiveChecked = $('#radio-recruit').is(':checked');
    var isEndedChecked = $('#radio-end').is(':checked');

	console.log(isActiveChecked)
    // 요청할 데이터 객체 생성
    var requestData = {
        active: isActiveChecked,
        ended: isEndedChecked
    };

    // AJAX 요청
    $.ajax({
        url: 'FilterContest', // 서블릿 절대 경로 사용
        type: 'GET', // GET 방식 선택
        dataType: 'json',
        data: requestData,
        success: function(data) {
            console.log("AJAX request succeeded with data:", data);
            displayContests(data); // 데이터 표시 함수
        },
        error: function(xhr, status, error) {
            console.error("Error fetching contests:", error);
        }
    });
}
function displayContests(data) {
    var isSmallChecked = $('#small-money').is(':checked');
    var isMiddleChecked = $('#middle-money').is(':checked');
    var isLargeChecked = $('#large-money').is(':checked');
    console.log("Updating UI with data");
    var html = '';

    var filteredData = data.filter(function(contest) {
        var prize = parseInt(contest.con_prize, 10); // 상금을 정수로 변환, 불필요한 변환 최소화
        // 상금 크기에 따라 필터링
       
        if (isSmallChecked) return prize >= 0 && prize <= 5000;
        if (isMiddleChecked) return prize > 5000 && prize <= 10000;
        if (isLargeChecked) return prize > 10000;
        return true; // 아무 필터링도 적용되지 않을 경우 모든 데이터를 포함
    });


    filteredData.forEach(function(contest) {
        var queryString = 'file=' + encodeURIComponent(contest.con_file) +
                          '&title=' + encodeURIComponent(contest.con_title) +
                          '&category=' + encodeURIComponent(contest.con_category) +
                          '&content=' + encodeURIComponent(contest.con_content) +
                          '&prize=' + encodeURIComponent(contest.con_prize) +
                          '&period=' + encodeURIComponent(contest.con_period) +
                          '&con_idx='+ encodeURIComponent(contest.con_idx);
        html += '<li>' +
                '<a href="Contestdetail.jsp?' + queryString + '" class="contest-list">'+
                '<div class="thumbnail">' +
                '<img src="assets/img/' + contest.con_file + '" alt="이미지 불러오기 실패" class="thum-img">' +
                '</div>' +
                '<div class="contest-info">' +
                '<div>' + contest.con_title + '</div>' +
                '<div>' + contest.con_category + '</div>' +
                '<div class="con-test">' + contest.con_content + '</div>' +
                '</div>' +
                '<ul class="prize-info">' +
                '<li>총상금 ' + contest.con_prize + '원</li>' +
                '<li>' + contest.con_period + '</li>' +
                '</ul>' +
                '</a>' +
                '</li>';
    });
    $('.contest-box > ul').html(html); // 기존 <ul> 내용을 새 HTML로 대체
    initializePagination(); // 페이지네이션 초기화
}


</script>

	
<script src="assets/js/contest.js"></script>
</body>
</html>
