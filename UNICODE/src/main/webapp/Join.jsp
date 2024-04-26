<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UnicodeJoin</title>
    <link rel="stylesheet" href="assets/css/Join.css">
</head>
    <div class="join-wrapper">
        <form class="join-form" id="signForm" action="JoinService" method="post">
            <h2>UNICODE 회원가입</h2>
            <!-- 아이디 -->
            <div id="join-id">
                <input type="text" placeholder="아이디 입력" name="id" id="inputE">
                <input type="button" value="ID 중복체크" onclick="checkE()" style="cursor:pointer">
            </div>
            <span class="checkE"></span>
    
            <!-- 비밀번호 -->
            <div id="join-pw">
                <input type="password" id="pw1" oninput="pwCheck()" placeholder="비밀번호 입력" name="pw">
            </div>
    
            <!-- 비밀번호 확인 -->
            <div id="join-repw">
                <input type="password" id="pw2" oninput="pwCheck()" placeholder="비밀번호 확인" name="pw2">
	            <span id="pwConfirm">비밀번호를 입력하세요</span>
            </div>
    
            <!-- 이메일 -->
            <div id="join-email">
                <input type="text" id="join-email2" placeholder="이메일 입력" name="email">
            </div>
            
            <!-- 이름 -->
            <div id="join-name">
                <input type="name" placeholder="이름 입력" name="name">
            </div>
    
            <!-- 연락처 -->
            <div id="join-tel">
                <input type="text" placeholder="연락처 입력" name="tel">
            </div>

            <label for="join-check">
                <input type="checkbox" id="join-check"> 이용약관 동의
                <b><a href="terms.jsp" id="join-check-s">이용약관 보기</a></b>
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
      var isEmailChecked = false;
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
              success: function(data) {
                if(data=='true'){
                    alert("사용 가능한 아이디입니다!");
                    isEmailChecked = true; // 상태 변경
                }else{
                    alert("사용 불가능한 아이디입니다!");
                }
            },
               error : function(){
                  alert("통신실패!")
               }
            }      
         )
         
      }
      $("#signForm").submit(function(e) {
            console.log(isEmailChecked);
           if(!isEmailChecked) {
               e.preventDefault(); 
               alert("아이디 중복체크를 해주세요.");
           
           }
          
       });
      
	 document.addEventListener('DOMContentLoaded', function() {
          const checkbox = document.getElementById('join-check');
          const form = document.querySelector('form');

          form.addEventListener('submit', function(event) {
              if (!checkbox.checked) {
                  event.preventDefault();
                  alert('이용약관 동의를 체크해주세요.');
              }
          });
      });
      
      function pwCheck(){
    	    if($('#pw1').val() == $('#pw2').val()){
    	        $('#pwConfirm').text('비밀번호 일치').css('color', 'green')
    	    }else{
    	        $('#pwConfirm').text('비밀번호 불일치').css('color', 'red')
    	    }
    	}
      document.getElementById('signForm').addEventListener('submit', function(event) {
          var pw1 = document.getElementById('pw1').value;
          var pw2 = document.getElementById('pw2').value;
          
          if (pw1 !== pw2) {
              event.preventDefault();
              alert("비밀번호를 확인해주세요.")
          }
      });

   </script>
   
</body>
</html>