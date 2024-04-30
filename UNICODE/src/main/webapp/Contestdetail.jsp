<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <title>콘테스트 상세페이지</title>
      <link rel="stylesheet" href="assets/css/contestdetail.css"/>
	  <link rel="stylesheet" href="assets/css/Main.css">
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
String title = request.getParameter("title");
String category = request.getParameter("category");
String content = request.getParameter("content");
String prize = request.getParameter("prize");
String period = request.getParameter("period");
String file = request.getParameter("file");
String con_idx = request.getParameter("con_idx");
System.out.println(con_idx +title+category+content+prize+period+file);
%>
		
        <!-- Product section-->
        <section class="containerwrap">
            <div class="container">
                <div class="align-items-center">
                    <div class="content">
                    	<img class="contestimg" src=assets/img/<%=file %> alt="https://dummyimage.com/600x700/dee2e6/6c757d.jpg" />
	                     <div class="content2">
	                     	<h1 class="cotest-title" >제목</h1>
	                        <h1 class="contest-title font-small" ><%=title %></h1>
	                        <div class="border" style="border-bottom:2px solid #f5f5f5;height:10px;"></div>
	                     	<h1 class="cotest-title">카테고리</h1>	                        
	                        <h1 class="contest-title font-small" ><%=category %></h1>
	                        <div class="border" style="border-bottom:2px solid #f5f5f5;height:10px;"></div>
	                        <div class="contest-prize">
	                            <h1 class="cotest-title">상금</h1>
	                            <h1 class="cotest-title font-small" ><%=prize %>원</h1>
	                        </div>
	                        <div class="border" style="border-bottom:2px solid #f5f5f5;height:10px;"></div>
	                            <h1 class="cotest-title">상세 설명</h1>
	                        <p class="contest-content"><%=content %></p>
	                         <div class="border" style="border-bottom:2px solid #f5f5f5;height:10px; margin-bottom:10px;"></div>
	                        <div class="d-flex">
	                            <% if (session.getAttribute("loginUser")!= null) {%>
	                            <button class="btn btn-outline-dark" type="button">   
	                                <a href="ContestApply.jsp?title=<%=title%>&con_idx=<%=con_idx%>">신청하기</a>
	                            <%} %>
	                            </button>
	                        </div>
	                    </div>
                    </div>
                   
                </div>
            </div>
        </section>
        
</body>
</html>
