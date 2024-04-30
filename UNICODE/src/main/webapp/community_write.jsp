<%@page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UnicodeCommunityWrite</title>
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/Main.css"/>
    <link rel="stylesheet" href="assets/css/community.css"/>
    <link rel="stylesheet" href="assets/css/portfolio_write.css"/>
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
    <%User user = (User) session.getAttribute("loginUser"); %>

<div class="content-min-height" style="background-color:#f5f5f5">
<!-- 상단 배너 시작 -->
    <div style="background-color: #abb5e763; max-width: 1440px; margin: 0 auto; margin-top:10px; border-radius: 20px;">
	    <a class="pick_banner" href="">
	        <div class="wrap">
	            <div class="banner_text">
	                <p>쉽고 빠른 창업 토탈 패키지</p>
	                <p class="sub">더 이상 고민하지 마세요. 이미 많은 분들이 경험했습니다.</p>
	            </div>
	            <img class="banner_img" src="assets/img/포켓몬1.jpg">
	            <div class="banner_button">자세히 보기</div>
	        </div>
	    </a>
	</div>
    <!-- 상단 배너 끝 -->

  <div class="full-content-width content-min-height">
      <div class="content-title">
          <div class="content-title-box">
              <h1 class="title">커뮤니티 글쓰기</h1>
          </div>
      </div>
    <form action="Community_writeService" method="post">
    	<input type="text" name="u_id" value="<%=user.getU_id() %>" style="display:none;">
      <div class="content-box-wrap">
        <section class="content-box-header">
            <div>
                <div class="label-input-partner">
                  <input name="community_title" class="content-write-title" type="text" placeholder="제목">
                </div>
            </div>
        </section>
        <section class="content-box-body">
            <div class="content-box-textbox">
                <div class="content-box-body-text">
                  <div class="textbox-border">
                    <textarea class="theme-partner expand" maxlength="5000" name="community_content" style="min-height: 402px;"></textarea>
                  </div>
                  <div>
                    <div class="portfolio-text" style="margin-top: 32px;">
                        이미지 등록
                    </div>
                    <input  type="file" name="community_file">
                  </div>
                </div>
                <div class="portfolio-footer">
                  <div class="button-box-wrap">
                      <input type="submit" value="등록" class="btn btn-11-24 btn-partner">
                      <a href="community.jsp" class="btn btn-11-24 btn-gray btn-delete">취소</a>
                  </div>
                  <p style="clear: both"></p>
              </div>
            </div>
            <ul class="content-gap"></ul>
        </section>
      </div>
      </form>
    </div>
</div>


</body>
</html>