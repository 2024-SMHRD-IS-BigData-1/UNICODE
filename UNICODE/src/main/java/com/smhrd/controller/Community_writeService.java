package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Community;
import com.smhrd.model.CommunityDAO;
import com.smhrd.model.Portfolio;
import com.smhrd.model.PortfolioDAO;

public class Community_writeService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String title = request.getParameter("community_title");
		String content = request.getParameter("community_content");
		String file = request.getParameter("community_file");
		String id = request.getParameter("u_id");
		
		System.out.println(title + content + file + id); 
		
		String path = request.getServletContext().getRealPath("assets/image");
		System.out.println(path);
		
		// 3. 파일 최대 크기(정수)
		int maxSize = 10*1024*1024; // 10MB
		
		// 4. 인코딩 타입(문자열)
		String encoding = "UTF-8";
		
		Community comm = new Community(title, content, file, id);
		
		int cnt = new CommunityDAO().comm(comm);
		response.setContentType("text/html; charset=euc-kr"); //한글이 인코딩
		PrintWriter out = response.getWriter(); //선언
		
		if(cnt > 0) {
			System.out.println("커뮤니티 입력 성공!");
			 String msg = "커뮤니티 등록 성공!";
			   String str="";
			   str = "<script language='javascript'>";
			   str += "alert('"+ msg + "');";   //얼럿창 띄우기
			   str += "location.href = 'community.jsp';";
			   str += "</script>";
			   out.print(str);
			   
			   
			// response.sendRedirect("Main.jsp");
		}else {
			System.out.println("커뮤니티 등록 실패...");
			// response.sendRedirect("Main.jsp");
		}
		
	
	}

}
