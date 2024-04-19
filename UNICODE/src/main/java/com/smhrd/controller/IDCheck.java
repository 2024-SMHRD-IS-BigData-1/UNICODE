package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.smhrd.model.User;
import com.smhrd.model.UserDAO;


@WebServlet("/IDCheck")
public class IDCheck extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String inputE = request.getParameter("inputE");
		
		System.out.println(inputE);

		User user = new UserDAO().IDCheck(inputE);
		
		PrintWriter out = response.getWriter();
		
		if(user == null) {
			// 사용가능한 이메일 -> true
			out.print(true);
		
		}else {
			// 사용불가능한 이메일 -> false
			out.print(false);
		}
		
	}
		
		
}
