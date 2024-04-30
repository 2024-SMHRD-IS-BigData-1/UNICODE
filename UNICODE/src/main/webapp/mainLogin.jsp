<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
    <style>
        *{
            font-family: "NotoSansKR", "Sans-serif";
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            padding: 0;
            margin: 0;
            border: none;
        }
        body{
            font-size: 14px;
            font-family: 'Roboto', sans-serif;
            background-color: #f5f5f5;
        }

    a {
        color: inherit;
        cursor: pointer;
        text-decoration: none;
        }
    .abox{
        background-color:#8910ec;
        color: #FFF;
        
        padding: 20px;
        border-radius: 8px;
        
    }
    .abox:hover{
        background-color:#57009e;
        color: #FFF;
        
    }
     .text-overlay {
		  position: absolute;
		  top: 40%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		  color: white; /* 텍스트 색상이 배경과 대비되도록 설정 */
		  font-size: 200px; /* 필요에 따라 크기 조정 */
		  font-weight: 900;
		  text-align: center;
		  max-width: 80%; /* 텍스트가 비디오 너비를 넘지 않도록 설정 */
		  white-space: pre-wrap; /* 텍스트 줄바꿈 허용 */
		  z-index: 1000; /* 최상위로 올리기 위해 높은 값 설정 */
		}
		.video-container {
		    margin: 0 auto;
		    position: relative;
		    width: 100%;
		    height: 0;
		    padding-bottom: 56.25%; /* 16:9 Aspect Ratio */
		    z-index: 10;
		  }
	
		
		@keyframes typing {
		  from { width: 0; }
		  to { width: 100%; }
		}
		
		@keyframes blink-caret {
		  from, to { border-color: transparent; }
		  50% { border-color: black; }
		}
		
		video {
		    position: absolute;
		    top: 0;
		    left: 0;
		    width: 100%;
		    height: 100%;
		  }
		 
		@keyframes fadeout {
		/* 효과를 동작시간 동안 0 ~ 1까지 */
			from {
				opacity: 1;
			}
			to {
				opacity: 0;
			}
		}
    
    </style>
</head>
<body>
     <div class="video-container">
	    <video id="introVideo" autoplay muted playsinline>
	      <source src="assets/img/video.mp4" type="video/mp4">
	  	</video>
	  <div class="text-overlay" id="textOverlay"></div>
	 </div>
    <div style="margin-top: 260px; display: grid; align-items: center;">
        <div style="margin: 0 auto;">
            <img src="assets/img/UNICODE.png" alt="">
        </div>
        <div style="text-align: center; font-size: xx-large; margin-top: 60px;">
            <a href="Main.jsp" class="abox"><i class="fa-solid fa-house fa-xl"></i></a>
            <a href="Login.jsp" class="abox"><b>개발자 로그인</b></a>
            <a href="Company_login.jsp" class="abox"><b>기업 로그인</b></a>
        </div>
    </div>
     <script>
  document.addEventListener("DOMContentLoaded", function() {
	    var video = document.getElementById('introVideo');

	    video.addEventListener('play', function() {
	        // 영상 시작 후 2초 뒤에 애니메이션 시작
	        setTimeout(function() {
	            video.style.animation = "fadeout 2s forwards";
	            // fadeout 애니메이션이 끝나는 시점에 display를 none으로 설정하기 위한 setTimeout
	            setTimeout(function() {
	                video.parentNode.style.display = 'none'; // video의 부모 요소인 video-container를 숨김
	            }, 2000); // fadeout 애니메이션의 지속 시간과 동일하게 설정
	        }, 2000); // 영상 시작 후 2초 대기
	    });
	});

	$(document).ready(function(){
	    $("#header").load("header.html");
	});

  $(document).ready(function(){
	  let text1 = "UNICODE";
	  let duration = 2000; // 3초
	  let $overlay = $("#textOverlay");

	  function typeEffect(text) {
	    $overlay.html(""); // 오버레이 초기화
	    let i = 0;
	    let interval = setInterval(function() {
	      $overlay.append(text.charAt(i)); // 현재 문자 추가
	      i++;
	      if (i >= text.length) {
	        clearInterval(interval); // 모든 문자가 추가되면 인터벌 종료
	      }
	    }, duration / text.length); // 전체 길이에 대한 타이핑 속도 계산
	  }

	  typeEffect(text1); // text1에 대해 타이핑 효과 적용
	});

</script>
</body>
</html>