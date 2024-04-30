<%@page import="com.smhrd.model.UserDAO"%>
<%@page import="com.smhrd.model.Profil"%>
<%@page import="com.smhrd.model.CommentDAO"%>
<%@page import="com.smhrd.model.Comment"%>
<%@page import="com.smhrd.model.User"%>
<%@page import="com.smhrd.model.Community"%>
<%@page import="com.smhrd.model.CommunityDAO"%>
<%@page import="java.util.List"%>
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
    <%
    	Object loginUser = session.getAttribute("loginUser"); 
    	User user = (User)loginUser;
    %>
    <%
    	String comm_idx = request.getParameter("comm_idx");
    	Community communityD = new CommunityDAO().communityD(comm_idx);
    	List<Comment> commentList = new CommentDAO().commentList(comm_idx);
    %>
    <div id="root" >
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
                                <h1 class="content-box-header-title"><%= communityD.getComm_title() %></h1>
                                <div class="content-box-header-subtilte">
                                    <span class="content-box-user"><%=communityD.getU_id() %></span>
                                    <div class="separator-line"></div>
                                    <span class="content-box-date"><%=communityD.getCreated_at() %></span>
                                </div>
                            </div>
                        </section>
                       
                    </div>
                    <section class="content-box-body">
                        <div class="content-box-textbox">
                            <div class="content-box-body-text">
                                <p><%=communityD.getComm_content() %></p>
                             
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
                                <span>총 <span class="num"><%=commentList.size()%> </span>개의 댓글 </span>
                            </div>
                            <form action="CommentService" method="post">
                            <fieldset>
                                <div class="event-search-wrap">
                                    <input type="hidden" name="u_id" value="<%=user.getU_id()%>">
                                    <input type="hidden" name="comm_idx" value="<%=comm_idx%>">
                                    <div class="field has-addons has-addons--fixed">
                                        <p class="control is-expanded">
                                            <textarea rows="" href="javascript:;" name="comment_text" ;="" data-url="/community/magazine/B200066519" class="textarea review-contents" placeholder="입력창에 댓글을 작성해 주세요. 비방이나 욕설, 광고 글이나 허위 또는 저속한 내용 등은 사전 통보 없이 블라인드 처리될 수 있습니다."></textarea>
                                        </p>
                                        <p class="control">
                                            <button type="submit" id="submitBtn" class="button is-primary">등록</button>
                                        </p>
                                    </div>
                                </div>
                            </fieldset>
                            </form>
                            <span class="max-contents-txt count-txt">0/100</span>
                        </div>
                        <hr class="comment-divider">
                        <ul class="comment-lists">
                        	<%int cnt = 1;
                        	for(Comment cmt : commentList){
                        		Profil profil = new UserDAO().userprofile(cmt.getU_id());
                        		%>
                            <li>
                                <div class="comment-list-box">
                                    <div>
                                        <div style="display: flex; align-items: center; margin-bottom: 10px;">
                                            <img class="comment-user-profile" src="assets/image/<%=profil.getProfile_img()%>"></img>
                                            <div>
                                                <div class="comment-user-id"><b><%=cmt.getU_id() %></b></div>
                                                <div class="comment-date"><%=cmt.getCreated_at() %></div>
                                            </div>
                                        </div>
                                        <div class="comment-user-write"><%=cmt.getComment_text() %></div>
                                    </div>
                                    
                                </div>
                            </li>
                            <%} %>
                        </ul>
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