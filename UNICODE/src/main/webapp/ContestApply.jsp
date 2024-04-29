<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <title>UnicodeContestWrite</title>
    <link rel="stylesheet" href="assets/css/Main.css"/>
    <link rel="stylesheet" href="assets/css/portfolio_write.css"/>
</head>
<body>
<!-- header 시작 -->
    <div id="header"></div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#header").load("header.jsp");
    });
    </script>
<!-- header 끝 -->
			<%String title = request.getParameter("title"); %>
<div class="container">
    <div class="portfolio">
        <form action="ContestApply" id="portfolio-form" method="post">
            <div class="portfolio-add-title">참가 콘테스트: <%=title %></div>
            <div class="portfolio-add-content-box">
                        <div class="portfolio-detail">
                            <div class="portfolio-text">
                                콘테스트 구현 설명
                                <span class="star">*</span>
                            </div>
                            <div class="textarea-border">
                                <textarea class="theme-partner expand" maxlength="5000" name="content" style="min-height: 402px;"></textarea>
                            </div>
                        </div>
                        <div>
                            <div class="portfolio-text" style="margin-top: 32px;">
                                콘테스트 제출 파일
                            </div>
                            <input  type="file" name="filename">
                        </div>
                    </div>
                    <div class="portfolio-footer">
                        <div class="button-box">
                            <input type="submit" value="등록" class="btn btn-11-24 btn-partner">
                            <input type="reset" value="취소" class="btn btn-11-24 btn-gray">
                            
                        </div>
                        <div class="body-3 btn-help-box">
                            <span class="star"><b>* 필수 항목</b></span>을 모두 작성해 주세요.
                        </div>
                        <p style="clear: both"></p>
                    </div>
                </div>
            </div>
        </form>
    </div>

</div>
<script>
window.onload = function() {
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();

    today = yyyy + '-' + mm + '-' + dd;
    document.getElementById('period_start').value = today;
};
</script>
<script>

function calculateCost() {
    let startDate = document.getElementById('period_start').value;
    let endDate = document.getElementById('period_end').value;
    console.log(startDate + endDate);
    if(startDate != null && endDate != null){
    	 startDate = new Date(startDate);
    	    endDate = new Date(endDate);

    	    // 날짜 차이 계산
    	    let differenceInTime = endDate.getTime() - startDate.getTime();
    	    let differenceInDays = differenceInTime / (1000 * 3600 * 24) + 1; // 시작일과 종료일을 포함하여 계산

    	    // 총 금액 계산
    	    let totalCost = differenceInDays * 30000;
    	    
    	    // 결과 출력
    	    // document.getElementById('total_cost').innerText = totalCost.toLocaleString() + '원';
    	    document.getElementById('prize').placeholder = differenceInDays + '일 평균가 : '+totalCost.toLocaleString() + '원 ※ 입력시 숫자만 입력 ※' ;
    }
    
   
}

// 입력 필드에 이벤트 리스너 추가
document.getElementById('period_start').addEventListener('change', calculateCost);
document.getElementById('period_end').addEventListener('change', calculateCost);
document.getElementById('prize').addEventListener('change', calculateCost);

</script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var inputElement = document.querySelector('.textarea-border');
        inputElement.addEventListener('input', function() {
            if(inputElement.value != '') {
                // 값이 있을 때의 테두리 색상 변경
                inputElement.style.border = '1px solid #00C853'; // 초록색으로 변경
            } else {
                // 값이 없을 때 원래 테두리 색상으로 되돌리기
                inputElement.style.borderColor = '#e52929';
            }
        });
    });
    document.addEventListener("DOMContentLoaded", function() {
        var inputElement = document.querySelector('.expand');
        inputElement.addEventListener('textarea', function() {
            if(inputElement.value != '') {
                // 값이 있을 때의 테두리 색상 변경
                inputElement.style.border = '1px solid #00C853'; // 초록색으로 변경
            } else {
                // 값이 없을 때 원래 테두리 색상으로 되돌리기
                inputElement.style.borderColor = '#e52929';
            }
        });
    });
    document.addEventListener("DOMContentLoaded", function() {
        var inputElement = document.querySelector('.input-url');
        inputElement.addEventListener('input', function() {
            if(inputElement.value != '') {
                // 값이 있을 때의 테두리 색상 변경
                inputElement.style.border = '1px solid #00C853'; // 초록색으로 변경
            } else {
                // 값이 없을 때 원래 테두리 색상으로 되돌리기
                inputElement.style.borderColor = 'black';
            }
        });
    });
    document.addEventListener("DOMContentLoaded", function() {
        var inputElement = document.querySelector('.finish');
        inputElement.addEventListener('input', function() {
            if(inputElement.value != '') {
                // 값이 있을 때의 테두리 색상 변경
                inputElement.style.border = '1px solid #00C853'; // 초록색으로 변경
            } else {
                // 값이 없을 때 원래 테두리 색상으로 되돌리기
                inputElement.style.borderColor = '#e52929';
            }
        });
    });
    document.addEventListener("DOMContentLoaded", function() {
        var inputElement = document.querySelector('.input-tech');
        inputElement.addEventListener('input', function() {
            if(inputElement.value != '') {
                // 값이 있을 때의 테두리 색상 변경
                inputElement.style.border = '1px solid #00C853'; // 초록색으로 변경
            } else {
                // 값이 없을 때 원래 테두리 색상으로 되돌리기
                inputElement.style.borderColor = '#e52929';
            }
        });
    });

    document.addEventListener("DOMContentLoaded", function() {
        var inputElement = document.querySelector('.input-title');
        inputElement.addEventListener('input', function() {
            if(inputElement.value != '') {
                // 값이 있을 때의 테두리 색상 변경
                inputElement.style.border = '1px solid #00C853'; // 초록색으로 변경
            } else {
                // 값이 없을 때 원래 테두리 색상으로 되돌리기
                inputElement.style.borderColor = '#e52929';
            }
        });
    });
   
    document.addEventListener("DOMContentLoaded", function() {
        var inputElement = document.querySelector('.start');
        inputElement.addEventListener('input', function() {
            if(inputElement.value != '') {
                // 값이 있을 때의 테두리 색상 변경
                inputElement.style.border = '1px solid #00C853'; // 초록색으로 변경
            } else {
                // 값이 없을 때 원래 테두리 색상으로 되돌리기
                inputElement.style.borderColor = '#e52929';
            }
        });
    });
    document.addEventListener("DOMContentLoaded", function() {
        var inputElement = document.querySelector('.input-partner');
        inputElement.addEventListener('input', function() {
            if(inputElement.value != '') {
                // 값이 있을 때의 테두리 색상 변경
                inputElement.style.border = '1px solid #00C853'; // 초록색으로 변경
            } else {
                // 값이 없을 때 원래 테두리 색상으로 되돌리기
                inputElement.style.borderColor = '#e52929';
            }
        });
    });
    </script>
    <script>



function filter_percent(element) {
  const $el_val = $(element).val();

  if ($el_val.length === 0 && event.keyCode === 48) event.returnValue = false;
  if ($el_val.length > 2) event.returnValue = false;
  if (event.keyCode <= 47 || event.keyCode >= 58) event.returnValue = false;
  if ($el_val === 10 && event.keyCode !== 48) event.returnValue = false;
  if ($el_val > 11) event.returnValue = false;
}

function only_percent(element) {
  const $el_val = $(element).val().replace(/\D/g, '');
  if ($el_val > 100) {
    $(element).val(100);
  }
}
      </script>
</body>
</html>