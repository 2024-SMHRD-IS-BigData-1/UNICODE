package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.smhrd.model.User;
import com.smhrd.model.UserDAO;

public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		System.out.println(id+pw);

		User user = new User(id, pw);

		User loginUser = new UserDAO().login(user);
		System.out.println(loginUser);
		
        response.setContentType("text/html; charset=euc-kr"); //한글이 인코딩
        PrintWriter out = response.getWriter(); //선언
		

		if (loginUser != null) {
			System.out.println("로그인 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			response.sendRedirect("Main.jsp");
		} else if(loginUser == null) {
			System.out.println(loginUser);
			System.out.println("로그인 실패..");
			 String msg = "아이디 또는 비밀번호를 입력해주세요.";
			   String str="";
			   str = "<script language='javascript'>";
			   str += "alert('"+ msg + "');";   //얼럿창 띄우기
			   str += "location.href = 'Login.jsp';";
			   str += "</script>";
			   out.print(str);
		} else {
			System.out.println(loginUser);
			System.out.println("로그인 실패..");
			 String msg = "아이디 또는 비밀번호를 확인해주세요.";
			   String str="";
			   str = "<script language='javascript'>";
			   str += "alert('"+ msg + "');";   //얼럿창 띄우기
			   str += "location.href = 'Login.jsp';";
			   str += "</script>";
			   out.print(str);
		}

			
			
		
	}

}