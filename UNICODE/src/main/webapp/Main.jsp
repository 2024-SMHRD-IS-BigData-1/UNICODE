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
                          <a href="Contest.jsp" class="bn" style="background-color:#000000;">
                              <div class="bn_inner1">
                                  <div class="bn_inner2">
                                      <div class="bn_inner3">
                                          <span class="bn_text" style="color:#fff">
												콘테스트의 왕좌를 도전하세요!
                                          </span>
                                      
                                      </div>
                                  </div>
                                  <img class="bn_img" src="https://cdn.inflearn.com/public/main_sliders/c7210512-f6e0-4bc8-96fd-aedb81b34a15/%5B%ED%83%9C%EA%B7%B8%EB%9E%9C%EB%94%A9%5DTOP50_521.webp">
                              </div>
                          </a>
                      </div>
                  </a>
              </div>

              <div class="slide">
                  <a href="" class="bn">
                      <!-- 두 번째 슬라이드의 내용 -->
                      <div>
                       <a href="Contest.jsp" class="bn" style="background-color:rgb(236,239,255);">
                              <div class="bn_inner1">
                                  <div class="bn_inner2">
                                      <div class="bn_inner3">
                                          <span class="bn_text">
                                              포트폴리오 및 취업 준비에는 UNICODE!
                                          </span>
                                      </div>
                                  </div>
                                  <img class="bn_img" src="https://soup.pw/_next/image?url=%2Fbanner%2F2.png&w=640&q=75" alt="">
                              </div>
                          </a>
                          
                      </div>
                  </a>
              </div>

              <div class="slide">
                  <a href="" class="bn">
                      <!-- 세 번째 슬라이드의 내용 -->
                      <div>
	                      <a href="" class="bn" style="background-color:#000000;">
	                              <div class="bn_inner1">
	                                  <div class="bn_inner2">
	                                      <div class="bn_inner3">
	                                          <span class="bn_text" style="color:#fff">
	                                              초보 개발자의 프로젝트 씹어먹기!
	                                          </span>
	                                      </div>
	                                  </div>
	                                  <img class="bn_img" src="https://cdn.inflearn.com/public/main_sliders/2bb11b09-e564-4191-ab4a-c4032d429136/%5B%E1%84%90%E1%85%A2%E1%84%80%E1%85%B3%E1%84%85%E1%85%A2%E1%86%AB%E1%84%83%E1%85%B5%E1%86%BC%5D%E1%84%8B%E1%85%B5%E1%86%B8%E1%84%86%E1%85%AE%E1%86%AB%E1%84%85%E1%85%A6%E1%84%87%E1%85%A6%E1%86%AF_521.webp" alt="">
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
                        <img src="https://cdn-dantats.stunning.kr/prod/portfolios/06d20579-4caa-4842-b8c4-8c2bdeec3565/covers/5f8MgEsz6YGu9c5E.%E1%84%8A%E1%85%A5%E1%86%B7%E1%84%82%E1%85%A6%E1%84%8B%E1%85%B5%E1%86%AF.png.small?s=1000x1000&e=0x0&t=crop&q=100&f=webp" />
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
                        <img src="https://cdn-dantats.stunning.kr/prod/portfolios/d7fdcd38-73be-43ce-b074-29c0d5cb7287/covers/nHgU3a5i9HftkZY6.%EC%A0%9C%EC%B6%9C%EC%9A%A9%20600.png.small?s=600x600&e=0x0&t=crop&q=100&f=webp" />
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
                        <img src="https://cdn-dantats.stunning.kr/prod/portfolios/4f576e2c-628b-47a7-8900-4dcb6a33733b/covers/kbkPzkFAETqdspTk.%E1%84%8C%E1%85%A6%E1%84%86%E1%85%A9%E1%86%A8%20%E1%84%8B%E1%85%A5%E1%86%B9%E1%84%8B%E1%85%B3%E1%86%B7-1.jpg.small?s=599x599&e=0x0&t=crop&q=100&f=webp" />
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
                        <img src="https://cdn-dantats.stunning.kr/prod/portfolios/dcbf0844-048a-4881-9176-9fbc3f6a708f/covers/bDqFuBs62TfYiQRU.%E1%84%8A%E1%85%A5%E1%86%B7%E1%84%82%E1%85%A6%E1%84%8B%E1%85%B5%E1%86%AF.png.small?s=2560x2560&e=0x0&t=crop&q=100&f=webp" />
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
          
      
      <div class="swiper mySwiper" dir="ltr">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="slide-item">
                        <img src="https://cdn-dantats.stunning.kr/prod/portfolios/241282df-a90e-4220-90bd-031846263d91/covers/ORDER_SUB_141603_1_151126033534.jpg.small?s=800x800&t=crop&q=100&f=webp" />
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
                        <img src="https://cdn-dantats.stunning.kr/prod/portfolios/5853f5ed-8444-4333-adf8-f32a65379b9b/covers/order_sub_2174100_1_190210231146.jpg.small?s=800x800&t=crop&q=100&f=webp" />
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
                        <img src="https://cdn-dantats.stunning.kr/prod/portfolios/241282df-a90e-4220-90bd-031846263d91/covers/ORDER_SUB_141479_1_151125032547.jpg.small?s=800x800&t=crop&q=100&f=webp" />
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
                        <img src="https://cdn-dantats.stunning.kr/prod/portfolios/47ef82a9-e488-473c-a484-4a3b7f0d7b69/covers/EHJF5i2EvAqYFPc2.thumbnail.jpg.small?s=999x999&e=0x0&t=crop&q=100&f=webp" />
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
      <div class="swiper mySwiper" dir="ltr">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="slide-item">
                    <img src="https://cdn-dantats.stunning.kr/prod/portfolios/b7cbd0ad-cad1-4a37-9a4f-57e8f1f74f39/covers/W4693LYbhFrbwgXf.%EC%8D%B8%EB%84%A4%EC%9D%BC.png.small?s=600x600&e=0x0&t=crop&q=100&f=webp" />
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
                    <img src="https://cdn-dantats.stunning.kr/prod/portfolios/c12afd01-5380-4216-b4bd-f7dd71bbd555/covers/order_sub_2429518_1_200408211209.png.small?s=800x800&t=crop&q=100&f=webp" />
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
                    <img src="https://cdn-dantats.stunning.kr/prod/portfolios/d7fdcd38-73be-43ce-b074-29c0d5cb7287/covers/Fja58jpfXvR4zRjV.600.png.small?s=600x600&e=0x0&t=crop&q=100&f=webp" />
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
                    <img src="https://cdn-dantats.stunning.kr/prod/portfolios/45b0da35-22b4-4054-aa2b-c69504e69954/covers/ORDER_SUB_181038_1_160920005831.jpg.small?s=800x800&t=crop&q=100&f=webp" />
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