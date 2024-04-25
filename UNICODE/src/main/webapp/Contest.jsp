<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <title>Contest Page</title>
    <link rel="stylesheet" href="assets/css/contest.css"/>
    <link rel="stylesheet" href="assets/css/Main.css">
</head>
<body>
    <div id="header"></div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#header").load("header.jsp");
    });
    </script>
    <main id="contest">
        <!-- 기업아이디가 null이 아니라면 공모하기 버튼 나타내기 -->
    <% if (session.getAttribute("loginUser")!= null) {%>
    <div id="contest-write"><a href="ContestWrite.jsp">공모하기</a></div>    	
    <%}%>
        <section id="area">
            <aside class="side_bar"> 
                <div class="state_title" type="box">
                    <div class="state sidetitle">상태</div>
                    <div class="list-bar" style="height: 129px;">
                        <div class="description">
                            <label class="recruit">
                                <input type="checkbox" class="checkbutton" id="radio-recruit" value="recruit">                                
                                <div class="radio_label">진행중</div>
                            </label>
                            <label class="end">
                                <input type="checkbox" class="checkbutton" id="radio-end" value="end">                                
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
                                <input type="checkbox" class="checkbutton" id="small-money" value="">
                                <div class="radio_label">30만원 이하</div>
                            </label>
                            <label class="middle">
                                <input type="checkbox" class="checkbutton" id="middel-money" value="">
                                <div class="radio_label">30만원~ 100만원</div>
                            </label>
                            <label class="large">
                                <input type="checkbox" class="checkbutton" id="large-money" value="">
                                <div class="radio_label">100만원 이상</div>
                            </label>
                        </div>
                    </div>
                </div>
            </aside>
            <div class="list-wrapper">                
                <article class="contest-box">
                    <ul>
                        <li>
                            <a href="#" class="contest-list">
                                <div class="thumbnail">
                                    <img src="assets/img/포켓몬1.png" alt="이미지 불러오기 실패" class="thum-img">
                                </div>
                                <div class="contest-info">
                                    <div>카테고리 회사이름</div>
                                    <div>제목</div>
                                    <div>내용</div>
                                </div>
                                <ul class="prize-info">
                                    <li>총상금 40만원</li>
                                    <li>개최기간 7일</li>
                                    <li>24.04.17~24.04.24</li>
                                </ul>
                            </a>
                        </li>
                        <li>
                            <a href="Contest.jsp" class="contest-list">
                                <div class="thumbnail">
                                    <img src="assets/img/포켓몬2.png" alt="이미지 불러오기 실패" class="thum-img">
                                </div>
                                <div class="contest-info">
                                    <div>카테고리 회사이름</div>
                                    <div>제목</div>
                                    <div>내용</div>
                                </div>
                                <ul class="prize-info">
                                    <li>총상금 40만원</li>
                                    <li>개최기간 7일</li>
                                    <li>24.04.17~24.04.24</li>
                                </ul>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="contest-list">
                                <div class="thumbnail">
                                    <img src="assets/img/포켓몬3.png" alt="이미지 불러오기 실패" class="thum-img">
                                </div>
                                <div class="contest-info">
                                    <div>카테고리 회사이름</div>
                                    <div>제목</div>
                                    <div>내용</div>
                                </div>
                                <ul class="prize-info">
                                    <li>총상금 40만원</li>
                                    <li>개최기간 7일</li>
                                    <li>24.04.17~24.04.24</li>
                                </ul>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="contest-list">
                                <div class="thumbnail">
                                    <img src="assets/img/포켓몬4.png" alt="이미지 불러오기 실패" class="thum-img">
                                </div>
                                <div class="contest-info">
                                    <div>카테고리 회사이름</div>
                                    <div>제목</div>
                                    <div>내용</div>
                                </div>
                                <ul class="prize-info">
                                    <li>총상금 40만원</li>
                                    <li>개최기간 7일</li>
                                    <li>24.04.17~24.04.24</li>
                                </ul>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="contest-list">
                                <div class="thumbnail">
                                    <img src="assets/img/포켓몬5.png" alt="이미지 불러오기 실패" class="thum-img">
                                </div>
                                <div class="contest-info">
                                    <div>카테고리 회사이름</div>
                                    <div>제목</div>
                                    <div>내용</div>
                                </div>
                                <ul class="prize-info">
                                    <li>총상금 40만원</li>
                                    <li>개최기간 7일</li>
                                    <li>24.04.17~24.04.24</li>
                                </ul>
                            </a>
                        </li>
                    </ul>
                    <div class="pagination">
                        <nav>
                            <a class="page-btn" data-page="1">1</a>
                            <a class="page-btn" data-page="2">2</a>
                            <a class="page-btn" data-page="3">3</a>
                            <a class="page-btn" data-page="4">4</a>
                            <a class="page-btn" data-page="5">5</a>
                            <a class="page-btn next-page">></a>
                        </nav>
                    </div>
                </article>
            </div>
        </section>
    </main>
    <script src="assets/js/contest.js">
    </script>
</body>
</html>
