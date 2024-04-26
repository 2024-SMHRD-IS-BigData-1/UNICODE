package com.smhrd.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.User;
import com.smhrd.model.UserDAO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		LocalDate join_date = LocalDate.now();
		
		User user = new User(id, pw, name, tel, email, join_date);
		
		int cnt = new UserDAO().join(user);
		
		if(cnt > 0) {
			System.out.println("회원가입 성공!");
			response.sendRedirect("Profil.jsp?id="+user.getU_id());
		}else {
			System.out.println("회원가입 실패..");
			// response.sendRedirect("Main.jsp");
		}
	
	}

}
