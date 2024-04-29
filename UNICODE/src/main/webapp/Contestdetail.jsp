<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>콘테스트 상세페이지</title>
        <link rel="stylesheet" href="assets/css/contestdetail.css"/>

    </head>
    <body>
		<%
String title = request.getParameter("title");
String category = request.getParameter("category");
String content = request.getParameter("content");
String prize = request.getParameter("prize");
String period = request.getParameter("period");
String file = request.getParameter("file");
System.out.println(title+category+content+prize+period+file);
%>
		
        <!-- Product section-->
        <section class="containerwrap">
            <div class="container">
                <div class="align-items-center">
                    <div class="content"><img class="contestimg" src=assets/img/<%=file %> alt="https://dummyimage.com/600x700/dee2e6/6c757d.jpg" /></div>
                    <div class="content">
                        <h1 class="contest-title"><%=title %></h1>
                        <div class="contest-category"><%=category %></div>
                        <div class="contest-prize">
                            <span class="prize"><%=prize %>원</span>
                        </div>
                        <p class="contest-content"><%=content %></p>
                        <div class="d-flex">
                            <button class="btn btn-outline-dark" type="button">   
                                <a href="ContestApply.jsp?title=<%=title%>">신청하기</a>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
    </body>
</html>
