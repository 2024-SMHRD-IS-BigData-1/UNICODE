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
import com.smhrd.model.Portfolio;
import com.smhrd.model.PortfolioDAO;


public class PortfolioWrite extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		
		String path = request.getServletContext().getRealPath("assets/image");
		System.out.println(path);
		
		// 3. 파일 최대 크기(정수)
		int maxSize = 10*1024*1024; // 10MB
		
		// 4. 인코딩 타입(문자열)
		String encoding = "UTF-8";
		
		// 5. 파일 이름 중복제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);


		
		
		String title = multi.getParameter("title");
		String[] ranges = multi.getParameterValues("range");
		String range = String.join(",", ranges);
		String id = multi.getParameter("id");
		String[] categorys = multi.getParameterValues("category");
		String category = String.join(",", categorys);
		String field = multi.getParameter("port_field");
		String tech = multi.getParameter("port_tech");
		String start = multi.getParameter("period_start");
		String end = multi.getParameter("period_end");
		String period = start +"~"+ end;
		String url = multi.getParameter("port_url");
		String content = multi.getParameter("content");
		String filename = multi.getFilesystemName("filename");
		
		
		Portfolio pofol = new Portfolio(title, range, id, category, field, tech, period, url, content, filename);
		
		int cnt = new PortfolioDAO().enroll(pofol);
		response.setContentType("text/html; charset=euc-kr"); //한글이 인코딩
        PrintWriter out = response.getWriter(); //선언
		
		if(cnt > 0) {
			System.out.println("프로필 입력 성공!");
			 String msg = "포트폴리오 등록 성공!";
			   String str="";
			   str = "<script language='javascript'>";
			   str += "alert('"+ msg + "');";   //얼럿창 띄우기
			   str += "location.href = 'mypage_port.jsp';";
			   str += "</script>";
			   out.print(str);
			   
			   
			// response.sendRedirect("Main.jsp");
		}else {
			System.out.println("포트폴리오 등록 실패...");
			// response.sendRedirect("Main.jsp");
		}
	}

}
