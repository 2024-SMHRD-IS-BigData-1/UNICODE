<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.ContestDAO"%>
<%@page import="com.smhrd.model.Contest"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/9e1b042d62.js" crossorigin="anonymous"></script>
    <title>UnicodeContestpage</title>
    <link rel="stylesheet" href="assets/css/contest.css"/>
    <link rel="stylesheet" href="assets/css/Main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.5/pagination.min.js"></script>
</head>
<body>
    <div id="header"></div>
    <script>
    $(document).ready(function(){
        $("#header").load("header.jsp");
    });
    </script>
    <main id="contest">
        <!-- 기업아이디가 null이 아니라면 공모하기 버튼 나타내기 -->
    <% if (session.getAttribute("loginCompany")!= null) {%>
    <div id="contest-write"><a href="ContestWrite.jsp">공모하기</a></div>    	
    <%}%>
        <section id="area">
            <aside class="side_bar"> 
                <div class="state_title" type="box">
                    <div class="state sidetitle">상태</div>
                    <div class="list-bar" style="height: 129px;">
                        <div class="description">
                            <label class="recruit">
                                <input type="checkbox" class="checkbutton" id="radio-recruit" value="recruit">                                
                                <div class="radio_label">진행중</div>
                            </label>
                            <label class="end">
                                <input type="checkbox" class="checkbutton" id="radio-end" value="end">                                
                                <div class="radio_label">종료</div>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="prize_title" type="box">
                    <div class="prize sidetitle">상금</div>
                    <div class="list-bar" style="height: 129px;">
                        <div class="description">
                            <label class="small">
                                <input type="checkbox" class="checkbutton" id="small-money" value="">
                                <div class="radio_label">30만원 이하</div>
                            </label>
                            <label class="middle">
                                <input type="checkbox" class="checkbutton" id="middel-money" value="">
                                <div class="radio_label">30만원~ 100만원</div>
                            </label>
                            <label class="large">
                                <input type="checkbox" class="checkbutton" id="large-money" value="">
                                <div class="radio_label">100만원 이상</div>
                            </label>
                        </div>
                    </div>
                </div>
            </aside>
            <div class="list-wrapper">
            <%List<Contest> contestList = new ContestDAO().ShowContest();
			pageContext.setAttribute("contestList",contestList);
			%>       
      
                <article class="contest-box">
					<ul>
					<c:forEach var="contest" items="${contestList}">
					    <li>
					        <a href="#" class="contest-list">
					            <div class="thumbnail">
					                <img src="assets/img/${contest.con_file}" alt="이미지 불러오기 실패" class="thum-img">
					            </div>
					            <div class="contest-info">
					                <div>${contest.con_title}</div>
					                <div>${contest.con_category}</div>
					                <div>${contest.con_content}</div>
					            </div>
					            <ul class="prize-info">
					                <li>총상금 ${contest.con_prize}</li>
					                <li>${contest.con_period}</li>
					            </ul>
					        </a>
					    </li>
					</c:forEach>
					</ul>
                    <div class="pagination">
                    	<i class="fa-solid fa-arrow-left"></i>
                    	<ol id="numbers">
                    	</ol>
                    	<i class="fa-solid fa-arrow-right"></i>
					</div>
                </article>
            </div>
        </section>
    </main>
<script src="assets/js/contest.js"></script>

</body>
</html>
