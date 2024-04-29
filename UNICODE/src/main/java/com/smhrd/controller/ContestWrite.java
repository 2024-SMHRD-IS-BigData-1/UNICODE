package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Company;
import com.smhrd.model.Contest;
import com.smhrd.model.ContestDAO;
import com.smhrd.model.Portfolio;
import com.smhrd.model.PortfolioDAO;
import com.smhrd.model.User;

public class ContestWrite extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		

		
		String title = request.getParameter("title");
		Company company = (Company) session.getAttribute("loginCompany");
		String bno_idx = company.getBno_idx(); // 기업아이디로 바꿔야함
		String[] categorys = request.getParameterValues("category");
		String category = String.join(",", categorys);
		String prize = request.getParameter("prize");
		String start = request.getParameter("period_start");
		String end = request.getParameter("period_end");
		String period = start +"~"+ end;
		String content = request.getParameter("content");
		String filename = request.getParameter("filename");
		
		
		
		Contest contest = new Contest(bno_idx,title, prize, period, content, category,filename);
		
		int cnt = new ContestDAO().enroll(contest);
		
		if(cnt > 0) {
			System.out.println("개최 성공!");
			response.sendRedirect("pay.jsp?prize="+contest.getCon_prize());
		}else {
			System.out.println("개최 실패..");
			response.sendRedirect("Contest.jsp");
		}
		
	}
}


