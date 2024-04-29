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

<div class="content-min-height" style="background-color:#f5f5f5">
  <div class="full-content-width content-min-height">
      <div class="content-title">
          <div class="content-title-box">
              <h1 class="title">커뮤니티 글쓰기</h1>
          </div>
      </div>
      <div class="content-box-wrap">
        <section class="content-box-header">
            <div>
                <div class="label-input-partner">
                  <input class="content-write-title" type="text" placeholder="제목">
                </div>
            </div>
        </section>
        <section class="content-box-body">
            <div class="content-box-textbox">
                <div class="content-box-body-text">
                  <div class="textbox-border">
                    <textarea class="theme-partner expand" maxlength="5000" name="description" style="min-height: 402px;"></textarea>
                  </div>
                  <div>
                    <div class="portfolio-text" style="margin-top: 32px;">
                        이미지 등록
                    </div>
                    <input  type="file" name="filename">
                  </div>
                </div>
                <div class="portfolio-footer">
                  <div class="button-box-wrap">
                      <input type="submit" value="등록" class="btn btn-11-24 btn-partner">
                      <a href="/community.html" class="btn btn-11-24 btn-gray btn-delete">취소</a>
                  </div>
                  <p style="clear: both"></p>
              </div>
            </div>
            <ul class="content-gap"></ul>
        </section>
      </div>
    </div>
</div>


</body>
</html>