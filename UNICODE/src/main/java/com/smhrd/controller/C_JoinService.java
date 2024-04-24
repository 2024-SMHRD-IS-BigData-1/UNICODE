package com.smhrd.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Company;
import com.smhrd.model.CompanyDAO;
import com.smhrd.model.User;

@WebServlet("/C_JoinService")
public class C_JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String bno_idx = request.getParameter("bno_idx");
		String name = request.getParameter("name");
		String owner = request.getParameter("owner");
		String tel = request.getParameter("tel");
		String region = request.getParameter("profile_region");
		String homepage = request.getParameter("homepage");
		LocalDate join_date = LocalDate.now();
		
		Company company = new Company(bno_idx, id, pw, name, owner, tel, region, homepage, join_date);
		
		System.out.println(company.toString());
		
		int cnt = new CompanyDAO().join(company);
		
		if(cnt > 0) {
			System.out.println("회원가입 성공!");
			response.sendRedirect("Company_login.jsp");
		}else {
			System.out.println("회원가입 실패..");
			// response.sendRedirect("Main.jsp");
		}
	
	}

}
