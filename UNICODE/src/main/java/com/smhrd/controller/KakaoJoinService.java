package com.smhrd.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.User;
import com.smhrd.model.UserDAO;


public class KakaoJoinService extends HttpServlet {

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("email");
		String pw = request.getParameter("id");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String tel = request.getParameter("phoneNumber");
		LocalDate join_date = LocalDate.now();

		String idcheck = new UserDAO().IDCheck(id);
		if(idcheck == null) {
			User user = new User(id, pw, name, tel, email, join_date);
			int cnt = new UserDAO().join(user);
			
			if(cnt > 0) {
				System.out.println("회원가입 성공!");
				response.sendRedirect("Profil.jsp?id="+user.getU_id());
			}else {
				System.out.println("회원가입 실패..");
				// response.sendRedirect("Main.jsp");
			}
		}else {
			User user = new User(id, pw);

			User loginUser = new UserDAO().login(user);
			if (loginUser != null) {
				System.out.println("로그인 성공!");
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", loginUser);
				response.sendRedirect("Main.jsp");
			} else {
				System.out.println(loginUser);
				System.out.println("로그인 실패..");
				response.sendRedirect("Login.jsp");
			}
		}
		
		
	}

}
