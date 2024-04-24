package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Company;
import com.smhrd.model.CompanyDAO;
import com.smhrd.model.User;
import com.smhrd.model.UserDAO;

@WebServlet("/C_LoginService")
public class C_LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		System.out.println(id+pw);

		Company company = new Company(id, pw);

		Company loginCompany = new CompanyDAO().login(company);
		System.out.println(loginCompany);
		

		if (loginCompany != null) {
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("loginCompany", loginCompany);
			response.sendRedirect("Main.jsp");
		} else {
			System.out.println(loginCompany);
			System.out.println("로그인 실패..");
			response.sendRedirect("Company_login.jsp");
		}

			
			
		
	}

}