<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/Main.css"/>
    <link rel="stylesheet" href="assets/css/community.css"/>
    <link rel="stylesheet" href="assets/css/community_detail.css"/>
  	<style type="text/css">
  		#search_box{
  		width:300px;
  		}
  	</style>
</head>
<body>
	<div id="header"></div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#header").load("header.jsp");
    });
    </script> 
    <div id="root" >

        <div class="content-min-height" >
            <div class="full-content-width content-min-height">
                <div class="content-title">
                    <div class="content-title-box">
                        <h1 class="title">개발자 커뮤니티</h1>
                        <h2 class="sub-title">개발자에 관련된 다양한 소식을 확인해 보세요.</h2>
                    </div>
                </div>
                <div class="content-box-wrap">
                    <div class="content-box-header-wrap">
                        <section class="content-box-header">
                            <div>
                                <h1 class="content-box-header-title">제목</h1>
                                <div class="content-box-header-subtilte">
                                    <span class="content-box-user">사용자 닉네임</span>
                                    <div class="separator-line"></div>
                                    <span class="content-box-date">2024.03.27 11:29</span>
                                </div>
                            </div>
                        </section>
                        <div>
                            <button class="modify-delete-btn"><a href="community_modify.jsp">수정</a></button>
                            <button class="modify-delete-btn delete">삭제</button>
                        </div>
                    </div>
                    <section class="content-box-body">
                        <div class="content-box-textbox">
                            <div class="content-box-body-text">
                                <p>안녕하세요. 개발자에 대해서 궁금한 게 있어서 질문 드립니다.</p>
                                <br>
                                <p>주로 개발자는 어디서 포트폴리오를 관리하나요?</p>
                            </div>
                        </div>
                        <ul class="content-gap"></ul>
                    </section>
                    <section class="content-box-footer">
                        <div style="height: 48px;"></div>
                        <a class="back-to-community" href="community.jsp">
                            <span>목록으로</span>
                        </a>
                    </section>
                    <section class="section-contents-events events-comment-wrap" id="rpldata">
                        <div class="textarea-comment-wrap text-comment">
                            <div class="txt-number-info">
                                <span>총 <span class="num">0 </span>개의 댓글 </span>
                            </div>
                            <fieldset>
                                <div class="event-search-wrap">
                                    <input type="hidden" name="blbDataRplSn" value="">
                                    <div class="field has-addons has-addons--fixed">
                                        <p class="control is-expanded">
                                            <textarea rows="" href="javascript:;" ;="" data-url="/community/magazine/B200066519" class="textarea review-contents" placeholder="입력창에 댓글을 작성해 주세요. 비방이나 욕설, 광고 글이나 허위 또는 저속한 내용 등은 사전 통보 없이 블라인드 처리될 수 있습니다."></textarea>
                                        </p>
                                        <p class="control">
                                            <button type="submit" id="submitBtn" class="button is-primary">등록</button>
                                        </p>
                                    </div>
                                </div>
                            </fieldset>
                            <span class="max-contents-txt count-txt">0/100</span>
                        </div>
                        <hr class="comment-divider">
                        <ul class="comment-lists">
                            <li>
                                <div class="comment-list-box">
                                    <div>
                                        <div style="display: flex; align-items: center; margin-bottom: 10px;">
                                            <img class="comment-user-profile" src="assets/img/profile_img.jpeg"></img>
                                            <div>
                                                <div class="comment-user-id"><b>사용자 닉네임</b></div>
                                                <div class="comment-date">04.29 11:54</div>
                                            </div>
                                        </div>
                                        <div class="comment-user-write">좋은 정보 감사합니다!</div>
                                    </div>
                                    <div class="comment-delete">
                                        <i class="fa-solid fa-xmark"></i>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <div class="pitem-qna-pagination mb6">
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var textarea = document.querySelector('.textarea.review-contents');
            var countTxt = document.querySelector('.count-txt');
            var maxLength = 100; 
        
            
            textarea.addEventListener('input', function() {
                var currentLength = textarea.value.length; 
                if(currentLength > maxLength) {
                    textarea.value = textarea.value.substring(0, maxLength);
                    currentLength = maxLength; 
                }
                countTxt.innerText = `${currentLength}/${maxLength}`;
            });
            submitBtn.addEventListener('click', function(event) {
            if (textarea.value.trim().length === 0) { 
                alert('댓글을 입력해주세요.');
                event.preventDefault(); 
            }
    });
        });
        </script>
    <!-- 페이징 스크립트 -->
    <script src="assets/js/community_page.js"></script>
</body>
</html>