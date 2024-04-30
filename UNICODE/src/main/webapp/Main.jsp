<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.smhrd.model.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <title>UnicodeMain</title>
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
                                  <img class="bn_img" src="./img/포켓몬2.png" alt="">
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
                                  <img class="bn_img" src="./img/포켓몬3.png" alt="">
                              </div>
                          </a>
                      </div>
                  </a>
              </div>
          </div>

          <!-- banner끝 -->
    
      <div style="width:100%; height:48px"></div>
      <div class="wrap title">
        <h3 class="category-title">
          <span> 어떤 프로젝트가 필요하세요? </span>
        </h3>
        
        <div  style="display: flex; width: 1440px;margin: 0 auto; justify-content: space-between;">
          <div class="swiper mySwiper" dir="ltr">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="slide-item">
                        <img src="./img/portfolio_img1.png" />
                        <div class="slide-text" >
                            <div>
                                <div style="font-size: 18px;">
                                    <b>콘테스트 이름</b>
                                </div>
                                <span>콘테스트 설명</span>
                            </div>
                            <div>
                                <div style="font-size: larger; text-align: center; ">
                                    <b>상금</b>
                                </div>
                                <div>
                                    300,000원
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="slide-item">
                        <img src="./img/portfolio_img2.jpg" />
                        <div class="slide-text" >
                            <div>
                                <div style="font-size: 18px;">
                                    <b>콘테스트 이름</b>
                                </div>
                                <span>콘테스트 설명</span>
                            </div>
                            <div>
                                <div style="font-size: larger; text-align: center; ">
                                    <b>상금</b>
                                </div>
                                <div>
                                    300,000원
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="slide-item">
                        <img src="./img/portfolio_img3.png" />
                        <div class="slide-text" >
                            <div>
                                <div style="font-size: 18px;">
                                    <b>콘테스트 이름</b>
                                </div>
                                <span>콘테스트 설명</span>
                            </div>
                            <div>
                                <div style="font-size: larger; text-align: center; ">
                                    <b>상금</b>
                                </div>
                                <div>
                                    300,000원
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="slide-item">
                        <img src="./img/portfolio_img.png" />
                        <div class="slide-text" >
                            <div>
                                <div style="font-size: 18px;">
                                    <b>콘테스트 이름</b>
                                </div>
                                <span>콘테스트 설명</span>
                            </div>
                            <div>
                                <div style="font-size: larger; text-align: center; ">
                                    <b>상금</b>
                                </div>
                                <div>
                                    300,000원
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
          
      
      <div class="swiper mySwiper1" dir="rtl">
              <div class="swiper-wrapper">
                  <div class="swiper-slide">
                      <div class="slide-item">
                          <img src="./img/portfolio_img3.jpg" />
                          <div class="slide-text" >
                              <div>
                                  <div style="font-size: larger; text-align: center; ">
                                      <b>상금</b>
                                  </div>
                                  <div>
                                      300,000원
                                  </div>
                              </div>
                              <div>
                                  <div style="font-size: 18px;">
                                      <b>프로젝트 이름</b>
                                  </div>
                                  <span style="float: left;">프로젝트 설명</span>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="swiper-slide">
                      <div class="slide-item">
                          <img src="./img/portfolio_img1.png" />
                          <div class="slide-text" >
                              <div>
                                  <div style="font-size: larger; text-align: center; ">
                                      <b>상금</b>
                                  </div>
                                  <div>
                                      300,000원
                                  </div>
                              </div>
                              <div>
                                  <div style="font-size: 18px;">
                                      <b>프로젝트 이름</b>
                                  </div>
                                  <span style="float: left;">프로젝트 설명</span>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="swiper-slide">
                      <div class="slide-item">
                          <img src="./img/portfolio_img3.png" />
                          <div class="slide-text" >
                              <div>
                                  <div style="font-size: larger; text-align: center; ">
                                      <b>상금</b>
                                  </div>
                                  <div>
                                      300,000원
                                  </div>
                              </div>
                              <div>
                                  <div style="font-size: 18px;">
                                      <b>프로젝트 이름</b>
                                  </div>
                                  <span style="float: left;">프로젝트 설명</span>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="swiper-slide">
                      <div class="slide-item">
                          <img src="./img/portfolio_img2.jpg" />
                          <div class="slide-text" >
                              <div>
                                  <div style="font-size: larger; text-align: center; ">
                                      <b>상금</b>
                                  </div>
                                  <div>
                                      300,000원
                                  </div>
                              </div>
                              <div>
                                  <div style="font-size: 18px;">
                                      <b>프로젝트 이름</b>
                                  </div>
                                  <span style="float: left;">프로젝트 설명</span>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          
      </div>
      <div class="swiper mySwiper" dir="ltr">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="slide-item">
                    <img src="./img/portfolio_img1.png" />
                    <div class="slide-text" >
                        <div>
                            <div style="font-size: 18px;">
                                <b>콘테스트 이름</b>
                            </div>
                            <span>콘테스트 설명</span>
                        </div>
                        <div>
                            <div style="font-size: larger; text-align: center; ">
                                <b>상금</b>
                            </div>
                            <div>
                                300,000원
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="slide-item">
                    <img src="./img/portfolio_img2.jpg" />
                    <div class="slide-text" >
                        <div>
                            <div style="font-size: 18px;">
                                <b>콘테스트 이름</b>
                            </div>
                            <span>콘테스트 설명</span>
                        </div>
                        <div>
                            <div style="font-size: larger; text-align: center; ">
                                <b>상금</b>
                            </div>
                            <div>
                                300,000원
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="slide-item">
                    <img src="./img/portfolio_img3.png" />
                    <div class="slide-text" >
                        <div>
                            <div style="font-size: 18px;">
                                <b>콘테스트 이름</b>
                            </div>
                            <span>콘테스트 설명</span>
                        </div>
                        <div>
                            <div style="font-size: larger; text-align: center; ">
                                <b>상금</b>
                            </div>
                            <div>
                                300,000원
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="slide-item">
                    <img src="./img/portfolio_img.png" />
                    <div class="slide-text" >
                        <div>
                            <div style="font-size: 18px;">
                                <b>콘테스트 이름</b>
                            </div>
                            <span>콘테스트 설명</span>
                        </div>
                        <div>
                            <div style="font-size: larger; text-align: center; ">
                                <b>상금</b>
                            </div>
                            <div>
                                300,000원
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>
      <div style="width:100%; height:100px"></div>


    <!-- <div class="wrap list-header title" >
        <p class="list-title">라우드 콘테스트 200% 활용법</p>
        <a href="/contest/list/end" class="sc-ftvSup jVerRq">
            <button class="sc-papXJ ckblfV sc-evZas bpdWKd plus-contest">
                더보기
            </button>
        </a>
    </div> -->


  <!-- Swiper JS -->

  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

 

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      effect: "cube",
      grabCursor: true,
      cubeEffect: {
        shadow: true,
        slideShadows: true,
        shadowOffset: 20,
        shadowScale: 0.94,
      },
      autoplay: {
                    delay: 3000, // 2.5초마다 슬라이드 이동
                    disableOnInteraction: false, // 사용자 인터랙션 후에도 오토플레이 계속
                },
     
    });
  </script>
    <script>
        var swiper1 = new Swiper(".mySwiper1", {
          effect: "cube",
          grabCursor: true,
          cubeEffect: {
            shadow: true,
            slideShadows: true,
            shadowOffset: 20,
            shadowScale: 0.94,
          },
          autoplay: {
                        delay: 3000, // 2.5초마다 슬라이드 이동
                        disableOnInteraction: false, // 사용자 인터랙션 후에도 오토플레이 계속
                    },
          
        });
      </script>
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