package com.smhrd.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Portfolio;
import com.smhrd.model.PortfolioDAO;
import com.smhrd.model.UserDAO;

@WebServlet("/PortfolioWrite")
public class PortfolioWrite extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		

		
		
		String title = request.getParameter("title");
		String[] ranges = request.getParameterValues("range");
		String range = String.join(",", ranges);
		String u_id = "test";
		String[] categorys = request.getParameterValues("category");
		String category = String.join(",", categorys);
		String field = request.getParameter("port_field");
		String tech = request.getParameter("port_tech");
		String start = request.getParameter("period_start");
		String end = request.getParameter("period_end");
		String period = start +"~"+ end;
		String url = request.getParameter("port_url");
		String content = request.getParameter("content");
		String filename = request.getParameter("filename");
		
		
		Portfolio pofol = new Portfolio(title, range, u_id, category, field, tech, period, url, content, filename);
		
		int cnt = new PortfolioDAO().enroll(pofol);
		
		if(cnt > 0) {
			System.out.println("등록 성공!");
			//response.sendRedirect("JoinSuccess.jsp?email="+member.getEmail());
		}else {
			System.out.println("등록 실패..");
			// response.sendRedirect("Main.jsp");
		}
		
	}

}
