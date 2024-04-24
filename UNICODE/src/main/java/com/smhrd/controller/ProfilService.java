package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.Part;
import com.smhrd.model.Profil;
import com.smhrd.model.User;
import com.smhrd.model.UserDAO;

public class ProfilService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String path = request.getServletContext().getRealPath("assets/image");
		System.out.println(path);
		
		// 3. 파일 최대 크기(정수)
		int maxSize = 10*1024*1024; // 10MB
		
		// 4. 인코딩 타입(문자열)
		String encoding = "UTF-8";
		
		// 5. 파일 이름 중복제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		
		String id = multi.getParameter("u_id");
		String name = multi.getParameter("profile_name");
		String tel = multi.getParameter("profile_tel");
		String tech = multi.getParameter("profile_tech");
		String refion = multi.getParameter("profile_region");
		String period = multi.getParameter("profile_period");
		String wage = multi.getParameter("profile_wage");
		String residence = multi.getParameter("profile_residence");
		String career = multi.getParameter("profile_career");
		String license = multi.getParameter("profile_license");
		String award = multi.getParameter("profile_award");
		String img = multi.getFilesystemName("profile_img");
		
		System.out.println(id + name + tel + tech + refion + period + wage + residence + career + license + award + img);

        System.out.println(id + name + tel + tech + refion + period + wage + residence + career + license + award + img);

        Profil profil = new Profil(id, name, tel, tech, refion, period, wage, residence, career, license, award, img);

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
