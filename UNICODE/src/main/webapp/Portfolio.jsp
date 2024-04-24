<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <title>Document</title>
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
<div class="container">
    <div class="portfolio">
        <form action="PortfolioWrite" id="portfolio-form" method="post">
            <div class="portfolio-add-title">포트폴리오 등록</div>
            <div class="portfolio-add-content-box">
                <div class="label-input-partner">
                    <input class="input-title" data-type="label" name="title" onkeyup="max_input(this, 100)" type="text" value="" placeholder="포트폴리오 제목*">
                </div>
                <div class="input-guide-helpertext">예) 스포츠 예약/점수 관리 반응형 웹, 전력노조 커뮤니티, 물류 이동거리 추적 앱</div>
                <div class="portfolio-detail-box">
                    <div class="portfolio-detail-wrap">
                        <div class="portfolio-text">
                            업무범위
                            <span class="star">*</span>
                        </div>
                        <div class="portfolio-detail1">
                            <div class="project-category-box">
                                <label class="checkbox-partner">
                                    <span>
                                        <input class="portfolio-checkbox" id="category_develop" name="range" type="checkbox" value="개발" data-gtm-form-interact-field-id="0">
                                        <span class="arrow">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                                                <g fill="none" fill-rule="evenodd">
                                                    <path class="checked-icon" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.6" d="M4 7.8L7 11l5-6"></path>
                                                </g>
                                            </svg>
                                        </span>
                                    </span>
                                    <span>개발</span>
                                </label>
                            </div>
                            <div class="project-category-box">
                                <label class="checkbox-partner">
                                    <span>
                                        <input class="portfolio-checkbox" id="category_develop" name="range" type="checkbox" value="프로젝트참여" data-gtm-form-interact-field-id="0">
                                        <span class="arrow">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                                                <g fill="none" fill-rule="evenodd">
                                                    <path class="checked-icon" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.6" d="M4 7.8L7 11l5-6"></path>
                                                </g>
                                            </svg>
                                        </span>
                                    </span>
                                    <span>프로젝트 참여</span>
                                </label>
                            </div>
                            <div class="project-category-box">
                                <label class="checkbox-partner">
                                    <span>
                                        <input class="portfolio-checkbox" id="category_develop" name="range" type="checkbox" value="콘테스트참여" data-gtm-form-interact-field-id="0">
                                        <span class="arrow">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                                                <g fill="none" fill-rule="evenodd">
                                                    <path class="checked-icon" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.6" d="M4 7.8L7 11l5-6"></path>
                                                </g>
                                            </svg>
                                        </span>
                                    </span>
                                    <span>콘테스트 참여</span>
                                </label>
                            </div>
                        </div>
                        <div class="portfolio-detail">
                            <div class="portfolio-text">
                                카테고리
                                <span class="star">*</span>
                            </div>
                            <div class="project-category-box">
                                <label class="checkbox-partner">
                                    <span>
                                        <input class="portfolio-checkbox" id="category_develop" name="category" type="checkbox" value="웹" data-gtm-form-interact-field-id="0">
                                        <span class="arrow">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                                                <g fill="none" fill-rule="evenodd">
                                                    <path class="checked-icon" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.6" d="M4 7.8L7 11l5-6"></path>
                                                </g>
                                            </svg>
                                        </span>
                                    </span>
                                    <span>웹</span>
                                </label>
                            </div>
                            <div class="project-category-box">
                                <label class="checkbox-partner">
                                    <span>
                                        <input class="portfolio-checkbox" id="category_develop" name="category" type="checkbox" value="어플" data-gtm-form-interact-field-id="0">
                                        <span class="arrow">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                                                <g fill="none" fill-rule="evenodd">
                                                    <path class="checked-icon" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.6" d="M4 7.8L7 11l5-6"></path>
                                                </g>
                                            </svg>
                                        </span>
                                    </span>
                                    <span>어플</span>
                                </label>
                            </div>
                            <div class="project-category-box">
                                <label class="checkbox-partner">
                                    <span>
                                        <input class="portfolio-checkbox" id="category_develop" name="category" type="checkbox" value="pc프로그램" data-gtm-form-interact-field-id="0">
                                        <span class="arrow">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                                                <g fill="none" fill-rule="evenodd">
                                                    <path class="checked-icon" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.6" d="M4 7.8L7 11l5-6"></path>
                                                </g>
                                            </svg>
                                        </span>
                                    </span>
                                    <span>PC 프로그램</span>
                                </label>
                            </div>
                            <div class="project-category-box" style="margin-top: 10px;">
                                <label class="checkbox-partner">
                                    <span>
                                        <input class="portfolio-checkbox" id="category_develop" name="category" type="checkbox" value="기타" data-gtm-form-interact-field-id="0">
                                        <span class="arrow">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                                                <g fill="none" fill-rule="evenodd">
                                                    <path class="checked-icon" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.6" d="M4 7.8L7 11l5-6"></path>
                                                </g>
                                            </svg>
                                        </span>
                                    </span>
                                    <span>기타</span>
                                </label>
                            </div>
                        </div>
                        <div class="portfolio-detail">
                            <div class="portfolio-text">
                                포트폴리오 분야
                                <span class="star">*</span>
                            </div>
                            <div class="port-input">
                                <input type="text" class="input-field" name="port_field" placeholder="분야를 입력해 주세요. ex) 퍼블리싱, 반응형, 자사몰 구축, 데이터 분석 등등 ">
                            </div>
                        </div>
                        <div class="portfolio-detail">
                            <div class="portfolio-text">
                                관련 기술
                                <span class="star">*</span>
                            </div>
                            <div class="port-input">
                                <input class="input-tech" type="text" name="port_tech" placeholder="관련 기술을 입력해 주세요. ex) html, css, js, java, python 등등 ">
                            </div>
                        </div>
                        <div class="portfolio-detail">
                            <div class="portfolio-text">
                                참여 정보
                                <span class="star">*</span>
                            </div>
                            <div style="display: flex;">
                                <div class="date-input-box" style="width: 132px; margin-right: 70px;">
                                    <input class="date-input" data-type="label-placeholder" name="period_start" onkeypress="filter_number(this, 'm')" onkeyup="only_number(this, 'm')" placeholder="YYYY.MM." type="text" value="">
                                    <label class="input-label">시작 연월*</label>
                                </div>
                                <div class="date-input-box" style="width: 132px; margin-right: 70px;">
                                    <input class="date-input finish" data-type="label-placeholder" name="period_end" onkeypress="filter_number(this, 'm')" onkeyup="only_number(this, 'm')" placeholder="YYYY.MM." type="text" value="">
                                    <label class="input-label">종료 연월*</label>
                                </div>
                                
                            </div>
                        </div>
                        <div class="portfolio-detail">
                            <div class="portfolio-text">
                                결과물 url
                            </div>
                            <div class="port-input1">
                                <input type="text" class="input-url" name="port_url" placeholder="ex) https://www.naver.com">
                            </div>
                        </div>
                        <div class="portfolio-detail">
                            <div class="portfolio-text">
                                프로젝트 설명
                                <span class="star">*</span>
                            </div>
                            <div class="textarea-border">
                                <textarea class="theme-partner expand" maxlength="5000" name="content" style="min-height: 402px;"></textarea>
                            </div>
                        </div>
                        <div>
                            <div class="portfolio-text" style="margin-top: 32px;">
                                프로젝트 이미지 등록
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
        var inputElement = document.querySelector('.date-input');
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
      function filter_number(element, type) {
  if (type === undefined) {
    type = 'full';
  }

  const max_len = (type === 'm') ? 5 : 7;
  const $el_val = $(element).val().replace(/\./g, '');

  if (event.keyCode <= 47 || event.keyCode >= 58) event.returnValue = false;
  if ($el_val.length > max_len) event.returnValue = false;
}

function only_number(element, type) {
  const max_len = (type === 'm') ? 6 : 8;
  const $element = $(element);
  $element.val($element.val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g,''));

  if (event.keyCode === 8 || event.keyCode === 46) return;

  if (event.keyCode > 47 && event.keyCode < 58) {
    var $el_val = $element.val().replace(/\./g, '');

    if ($el_val.length === 4) {
      $element.val($el_val.replace(/(\d{4})/g, '$1.'));
    } else if ($el_val.length === 5) {
      $element.val($el_val.replace(/(\d{4})(\d)/g, '$1.$2'));
    } else if ($el_val.length === 6) {
      $element.val($el_val.replace(/(\d{4})(\d{2})/g, '$1.$2.'));
    } else if ($el_val.length === 7) {
      $element.val($el_val.replace(/(\d{4})(\d{2})(\d)/g, '$1.$2.$3'));
    } else if ($el_val.length === 8) {
      $element.val($el_val.replace(/(\d{4})(\d{2})(\d{2})/g, '$1.$2.$3.'));
    }
  } else {
    var $el_val = $element.val().replace(/\./g, '');
    if ($el_val >= max_len && max_len === 6) {
      $element.val($el_val.slice(0, 6).replace(/(\d{4})(\d{2})/g, '$1.$2.'));
    } else if ($el_val >= max_len && max_len === 8) {
      $element.val($el_val.slice(0, 8).replace(/(\d{4})(\d{2})(\d{2})/g, '$1.$2.$3.'));
    }
  }
}
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