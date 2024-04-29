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
</head>
<body>
    <div id="root">
    <div id="header"></div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#header").load("header.jsp");
    });
    </script>

        <div class="content-min-height">
            <div class="full-content-width content-min-height">
                <div class="content-title">
                    <div class="content-title-box">
                        <h1 class="title">개발자 커뮤니티</h1>
                        <h2 class="sub-title">개발자에 관련된 다양한 소식을 확인해 보세요.</h2>
                    </div>
                </div>
                <div class="content-top">
                    <div style="position: relative;">
                        <div>
                            <button class="write-btn">
                                <a href="community_write.jsp"><div style="padding-left: 23.5px;">글쓰기</div></a>
                            </button>
                        </div>
                    </div>
                    <form class="content-select" action="카테고리, 검색어 입력">
                        <div class="space-x-2">
                            <div style="position: relative;">
                                    <select class="listbox-btn">
                                        <option>제목 + 내용</option>
                                        <option>제목</option>
                                        <option>내용</option>
                                        <option>태그</option>
                                    </select>
                            </div>
                            <input type="text" class="search-box" placeholder="검색어를 입력해 주세요" name="keyword" maxlength="100" data-sentry-element="SearchForm" data-sentry-source-file="index.tsx">
                        </div>
                        <button type="submit" class="search-img">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                </div>
                <div class="content-main">
                    <table class="content-table">
                        <thead>
                            <tr class="table-header">
                                <th class="table-num" scope="col" colspan="1">번호</th>
                                <th class="table-title" scope="col" colspan="1">제목</th>
                                <th class="table-date" scope="col" colspan="1">날짜</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="3" class="paging" style="padding: 0;">
                                    <a class="community-detail" href="community_detail.jsp">
                                        <span class="upload-num">1</span>
                                        <div class="community-wrap">
                                            <div class="upload-wrap">
                                                <span class="upload-title">제목</span>
                                                <p class="upload-text">
                                                    안녕하세요. 개발자에 대해서 궁금한 게 있어서 질문 드립니다. 주로 개발자는 어디서
                                                </p>
                                            </div>
                                        </div>
                                        <p class="upload-date">2024.03.27 11:29</p>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="paging" style="padding: 0;">
                                    <a class="community-detail" href="community_detail.jsp">
                                        <span class="upload-num">2</span>
                                        <div class="community-wrap">
                                            <div class="upload-wrap">
                                                <span class="upload-title">제목</span>
                                                <p class="upload-text">
                                                    안녕하세요. 개발자에 대해서 궁금한 게 있어서 질문 드립니다. 주로 개발자는 어디서
                                                </p>
                                            </div>
                                        </div>
                                        <p class="upload-date">2024.03.27 11:29</p>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="paging" style="padding: 0;">
                                    <a class="community-detail" href="community_detail.jsp">
                                        <span class="upload-num">3</span>
                                        <div class="community-wrap">
                                            <div class="upload-wrap">
                                                <span class="upload-title">제목</span>
                                                <p class="upload-text">
                                                    안녕하세요. 개발자에 대해서 궁금한 게 있어서 질문 드립니다. 주로 개발자는 어디서
                                                </p>
                                            </div>
                                        </div>
                                        <p class="upload-date">2024.03.27 11:29</p>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="pagination-wrap">
                        <div class="pagination">
                            <ul class="page" id="pagination-list">
                                <li>
                                    <a class="present-page" href="">1</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 페이징 스크립트 -->
    <script src="assets/js/community_page.js"></script>
</body>
</html>