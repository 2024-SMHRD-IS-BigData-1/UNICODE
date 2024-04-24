package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Profil;
import com.smhrd.model.User;
import com.smhrd.model.UserDAO;

public class ProfilService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("u_id");
		String name = request.getParameter("profile_name");
		String tel = request.getParameter("profile_tel");
		String tech = request.getParameter("profile_tech");
		String refion = request.getParameter("profile_region");
		String period = request.getParameter("profile_period");
		String wage = request.getParameter("profile_wage");
		String residence = request.getParameter("profile_residence");
		String career = request.getParameter("profile_career");
		String license = request.getParameter("profile_license");
		String award = request.getParameter("profile_award");
		String img = request.getParameter("profile_img");
		
		System.out.println(id + name + tel + tech + refion + period + wage + residence + career + license + award  +img);
		
		
		Profil profil = new Profil(id, name, tel, tech, refion, period,  wage,  residence,  career, license,  award,  img);
		 response.setContentType("text/html; charset=euc-kr"); //한글이 인코딩
		   PrintWriter out = response.getWriter(); //선언


		int cnt = new UserDAO().profil(profil);
		
		if(cnt > 0) {
			System.out.println("프로필 입력 성공!");
			 String msg = "회원가입 성공!.";
			   String str="";
			   str = "<script language='javascript'>";
			   str += "alert('"+ msg + "');";   //얼럿창 띄우기
			   str += "location.href = 'Login.jsp';";
			   str += "</script>";
			   out.print(str);
			   
			   
			// response.sendRedirect("Main.jsp");
		}else {
			System.out.println("프로필 입력 실패...");
			// response.sendRedirect("Main.jsp");
		}
		
	}

}
