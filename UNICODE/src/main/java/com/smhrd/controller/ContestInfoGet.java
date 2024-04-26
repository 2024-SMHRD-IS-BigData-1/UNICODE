package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Contest;
import com.smhrd.model.ContestDAO;

public class ContestInfoGet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // ContestDAO를 사용하여 공모전 목록 정보를 가져옴
        List<Contest> contestlist = new ContestDAO().ContestGet();
        
        // request 객체의 속성으로 공모전 목록 정보를 설정
        request.setAttribute("contestlist", contestlist);
        
        // JSP 파일로 포워딩
        request.getRequestDispatcher("contest.jsp").forward(request, response);
    }
}
