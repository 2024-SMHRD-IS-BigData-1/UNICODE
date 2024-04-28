package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Profil;
import com.smhrd.model.UserDAO;

public class modifyService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("u_id");
		String name = request.getParameter("mypage_modify_name");
		String[] techs = request.getParameterValues("mypage_modify_tech");
		String tech = String.join(",", techs);
		String tel = request.getParameter("mypage_modify_tel");
		String region = request.getParameter("mypage_modify_region");
		String residence = request.getParameter("mypage_modify_residence");
		
		System.out.println(name + tech + tel + region + residence);
		
		Profil profil = new Profil(id, name, tel, tech, region, residence);
		
		 response.setContentType("text/html; charset=euc-kr"); //한글이 인코딩
	        PrintWriter out = response.getWriter(); //선언
		
		int cnt = new UserDAO().modify(profil);
		
		if(cnt > 0) {
			System.out.println("프로필 수정 완료!");
			HttpSession session = request.getSession();
			String msg = "프로필 수정 완료.";
			   String str="";
			   str = "<script language='javascript'>";
			   str += "alert('"+ msg + "');";   //얼럿창 띄우기
			   str += "location.href = 'mypage.jsp';";
			   str += "</script>";
			   out.print(str);
			
		}else {
			System.out.println("프로필 수정 실패...");
			String msg = "프로필 수정 실패..";
			   String str="";
			   str = "<script language='javascript'>";
			   str += "alert('"+ msg + "');";   //얼럿창 띄우기
			   str += "location.href = 'mypage_modify.jsp';";
			   str += "</script>";
			   out.print(str);
		}
	
		
	
	}

}
