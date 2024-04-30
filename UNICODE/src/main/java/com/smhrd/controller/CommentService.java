package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Comment;
import com.smhrd.model.CommentDAO;

public class CommentService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String comm_idx = request.getParameter("comm_idx");
		String u_id = request.getParameter("u_id");
		String comment_text = request.getParameter("comment_text");
		
		Comment comment = new Comment(comm_idx,u_id,comment_text);
		int cnt = new CommentDAO().comment(comment);
	
		response.setContentType("text/html; charset=euc-kr"); //한글이 인코딩
		PrintWriter out = response.getWriter(); //선언
		
		if(cnt > 0) {
			System.out.println("댓글 입력 성공!");
			 String msg = "댓글 등록 성공!";
			   String str="";
			   str = "<script language='javascript'>";
			   str += "alert('"+ msg + "');";   //얼럿창 띄우기
			   str += "location.href = 'community_detail.jsp?comm_idx="+comm_idx+"'";
			   str += "</script>";
			   out.print(str);
			   
			   
			// response.sendRedirect("Main.jsp");
		}else {
			System.out.println("커뮤니티 등록 실패...");
			// response.sendRedirect("Main.jsp");
		}
		
	}

}
