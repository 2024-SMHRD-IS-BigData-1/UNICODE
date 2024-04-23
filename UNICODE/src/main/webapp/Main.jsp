<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <title>Document</title>
	<link rel="stylesheet" href="assets/css/Main.css">
</head>
<body>
    <header>
        <div id="logo_menu" class="wrap">
            <div id="logo_img">
                <a href="main.html">
                    <img src="./img/logo.png"> 
                </a>
            </div>
            <div id="search_box">           
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input id="search-input" type="text" name="search-input" placeholder="  검색어를 입력하세요.">
                
            </div>

            <div class="menu_cont">
              <ul id="menu">
                  <li><a href="#">코딩 페스티벌</a></li>
                  <li><a href="./프로모션/promotion.html">개발자 찾기</a></li>
                  <li><a href="#">커뮤니티</a></li>
                  <% if(session.getAttribute("id") == null) { %>
                      <li><a href="Join.jsp">로그인/회원가입</a></li>
                  <% } else { %>
                      <li><span><%= session.getAttribute("id") %>님</span> / <a href="logout.jsp">로그아웃</a></li>
                  <% } %>
              </ul>
          </div>
        </div>

        <!-- banner 시작 -->
        <div class="slider">
            <div class="slide">
                <a href="" class="bn">
                    <!-- 첫 번째 슬라이드 내용 -->
                    <div>
                        <a href="" class="bn">
                            <div class="bn_inner1">
                                <div class="bn_inner2">
                                    <div class="bn_inner3">
                                        <span class="bn_text">
                                            베너 1
                                        </span>
                                    
                                    </div>
                                </div>
                                <img class="bn_img" src="./img/포켓몬1.jpg" alt="">
                            </div>
                        </a>
                    </div>
                </a>
            </div>
			<!--  -->
            <div class="slide">
                <a href="" class="bn">
                    <!-- 두 번째 슬라이드의 내용 -->
                    <div>
                        <a href="" class="bn">
                            <div class="bn_inner1">
                                <div class="bn_inner2">
                                    <div class="bn_inner3">
                                        <span class="bn_text">
                                            베너 2
                                        </span>
                                    </div>
                                </div>
                                <img class="bn_img" src="./img/포켓몬2.jpg" alt="">
                            </div>
                        </a>
                    </div>
                </a>
            </div>

            <div class="slide">
                <a href="" class="bn">
                    <!-- 세 번째 슬라이드의 내용 -->
                    <div>
                        <a href="" class="bn">
                            <div class="bn_inner1">
                                <div class="bn_inner2">
                                    <div class="bn_inner3">
                                        <span class="bn_text">
                                            베너 3
                                        </span>
                                    </div>
                                </div>
                                <img class="bn_img" src="./img/포켓몬3.jpg" alt="">
                            </div>
                        </a>
                    </div>
                </a>
            </div>
        </div>

        <!-- banner끝 -->
    </header>
    <div style="width:100%; height:48px"></div>
    <div class="wrap title">
      <h3 class="category-title">
        <span> 어떤 프로젝트가 필요하세요? </span>
      </h3>
      <div class="category-list">
        <div>
          <a href="" class="category-item">
            <div class="category--item">
              <i class="fa-solid fa-bars-progress"></i>
            </div>
            <div class="category-name">프로젝트</div>
          </a>
        </div>
        <div>
          <a href="" class="category-item">
            <div class="category--item">
              <i class="fa-solid fa-bars-progress"></i>
            </div>
            <div class="category-name">프로젝트</div>
          </a>
        </div>
        <div>
          <a href="" class="category-item">
            <div class="category--item">
              <i class="fa-solid fa-bars-progress"></i>
            </div>
            <div class="category-name">프로젝트</div>
          </a>
        </div>
        <div>
          <a href="" class="category-item">
            <div class="category--item">
              <i class="fa-solid fa-bars-progress"></i>
            </div>
            <div class="category-name">프로젝트</div>
          </a>
        </div>
        <div>
          <a href="" class="category-item">
            <div class="category--item">
              <i class="fa-solid fa-bars-progress"></i>
            </div>
            <div class="category-name">프로젝트</div>
          </a>
        </div>
        <div>
          <a href="" class="category-item">
            <div class="category--item">
              <i class="fa-solid fa-bars-progress"></i>
            </div>
            <div class="category-name">프로젝트</div>
          </a>
        </div>
        <div>
          <a href="" class="category-item">
            <div class="category--item">
              <i class="fa-solid fa-bars-progress"></i>
            </div>
            <div class="category-name">프로젝트</div>
          </a>
        </div>
      </div>
    </div>

    <div style="width:100%; height:100px"></div>

    <div class="wrap list-header title" >
        <p class="list-title">라우드 콘테스트 200% 활용법</p>
        <a href="/contest/list/end" class="sc-ftvSup jVerRq">
            <button class="sc-papXJ ckblfV sc-evZas bpdWKd plus-contest">
                더보기
            </button>
        </a>
    </div>


    <script>
        // 슬라이드를 모두 선택
        const slides = document.querySelectorAll('.slide');
        let currentSlide = 0; // 현재 슬라이드 인덱스
        
        // 첫 번째 슬라이드를 활성화
        slides[currentSlide].classList.add('active-slide');
        
        // 다음 슬라이드로 넘어가는 함수
        function nextSlide() {
          // 현재 슬라이드의 활성화를 제거
          slides[currentSlide].classList.remove('active-slide');
          // 다음 슬라이드로 이동, 마지막 슬라이드인 경우 다시 첫 번째로
          currentSlide = (currentSlide + 1) % slides.length;
          // 새로운 현재 슬라이드 활성화
          slides[currentSlide].classList.add('active-slide');
        }
        
        // 3초마다 nextSlide 함수를 호출하여 슬라이드를 자동으로 전환
        setInterval(nextSlide, 3000);
        </script>
        
</body>
</html>