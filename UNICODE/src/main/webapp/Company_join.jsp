<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/Join.css">
    <style type="text/css">
    .region {
    display: flex; 
    justify-content: space-between;
    margin-bottom: 10px;
    width: 400px;
    min-height: 42.5px;
    background-color: #fff;
    border-radius: 5px;
    border: 1px solid #ccc;
    align-items: center;
    color: #7a7575;
    }
    .address {
    margin-left: 10px;
    }
    </style>
</head>
    <div class="join-wrapper">
        <form class="join-form" action="C_JoinService" method="post">
            <h2>UNICODE 회원가입</h2>
            <!-- 아이디 -->
            <div id="join-id">
                <input type="text" placeholder="아이디 입력" name="id" id="inputE">
                <input type="button" value="중복체크" onclick="checkE()" style="cursor:pointer">
            </div>
            <span class="checkE"></span>
    
            <!-- 비밀번호 -->
            <div id="join-pw">
                <input type="password" placeholder="비밀번호 입력" name="pw">
            </div>
    
            <!-- 비밀번호 확인 -->
            <div id="join-repw">
                <input type="password" placeholder="비밀번호 재입력">
            </div>
            <span class="error_pw"></span>
    
            <!-- 사업자번호 -->
            <div id="join-email">
                <input type="text" id="join-email2" placeholder="사업자번호 입력" name="bno_idx">
            </div>
            
            <!-- 기업명 -->
            <div id="join-name">
                <input type="name" placeholder="기업명 입력" name="name">
            </div>
            
            <!-- 담당자명 -->
            <div id="join-name">
                <input type="name" placeholder="담당자명 입력" name="owner">
            </div>
    
            <!-- 전화번호 -->
            <div id="join-tel">
                <input type="tel" placeholder="전화번호 입력" name="tel">
            </div>
    
            <!-- 주소 -->
            <div class="region">
                <h3 class="address">
                    <label for="address">지역</label>
                </h3>
                <span>
                    <select name="profile_region" id="address_list" style="margin-bottom: 10px;">
                        <option value="서울">서울특별시</option>
                        <option value="인천">인천광역시</option>
                        <option value="대전">대전광역시</option>
                        <option value="대구">대구광역시</option>
                        <option value="울산">울산광역시</option>
                        <option value="부산">부산광역시</option>
                        <option value="광주">광주광역시</option>
                        <option value="세종">세종특별자치시</option>
                        <option value="경기도">경기도</option>
                        <option value="강원도">강원도</option>
                        <option value="충청남도">충청남도</option>
                        <option value="충청북도">충청북도</option>
                        <option value="경상북도">경상북도</option>
                        <option value="경상남도">경상남도</option>
                        <option value="전라북도">전라북도</option>
                        <option value="전라남도">전라남도</option>
                        <option value="제주도">제주도특별자치도</option>
                        <option value="울릉도">울릉도</option>
                        <option value="독도">독도</option>
                    </select>
                </span>
            </div>
            
            <!-- 홈페이지 주소 -->
            <div id="join-address">
                <input type="text" placeholder="홈페이지 주소 입력" name="homepage">
            </div>
            
           	<!-- 회사 이미지/로고 사진 -->
            <div style="margin: 10px 0;">
                <h3>
                    <label for="">프로필 사진</label>
                </h3>
                <input type="file" name="profile_img">
            </div>
            
            

            <label for="join-check">
                <input type="checkbox" id="join-check"> 이용약관 동의
                <b><a href="https://www.google.com/search?q=%EA%B7%B8%EB%83%A5+%EB%A7%8C%EB%93%A4%EC%96%B4%EB%B4%84&oq=%EA%B7%B8%EB%83%A5+%EB%A7%8C%EB%93%A4%EC%96%B4%EB%B4%84&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIJCAEQIRgKGKAB0gEJMzA3OGowajE1qAIIsAIB&sourceid=chrome&ie=UTF-8" id="join-check-s">이용약관 보기</a></b>
            </label>

            <div id="join-btn" style="margin-top: 13px;">
                <input type="submit" value="가입하기">
            </div>
            
            <div style="margin-top: 13px;">
               <input type="submit" value="돌아가기">
            </div>
        </form>

    </div>

   <!-- script -->
   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.scrolly.min.js"></script>
   <script src="assets/js/jquery.scrollex.min.js"></script>
   <script src="assets/js/skel.min.js"></script>
   <script src="assets/js/util.js"></script>
   <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
   <script src="assets/js/main.js"></script>
   <script type="text/javascript">
      function checkE(){
         var inputE = $("#inputE").val()   
         $.ajax(
            {
               // 어디로 요청할건지
               url : "IDCheck",
               // 어떤 데이터를 보낼건지
               data : {'inputE' : inputE},
               // 어떤 방식으로 요청할건지
               type : 'get',
               // 성공했을 때 / 실패했을 때 어떻게 처리할건지
               success : function(data){
                  if(data=='true'){
                     alert("사용 가능한 이메일입니다!")
                  }else{
                	  alert("사용 불가능한 이메일입니다!")
                  }
               },
               error : function(){
                  alert("통신실패!")
               }
            }      
         )
         
      }
   </script>
   
</body>
</html>