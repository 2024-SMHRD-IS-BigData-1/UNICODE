package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ContestDAO;
import com.smhrd.model.ContestApplication;
import com.smhrd.model.User;

public class ContestApply extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();

        int con_idx = Integer.parseInt(request.getParameter("con_idx"));
        User user = (User) session.getAttribute("loginUser");
        String u_id = user.getU_id();
        String filename = request.getParameter("filename");
        
        ContestApplication application = new ContestApplication(con_idx, u_id,filename);
       int cnt = new ContestDAO().apply(application);
       if(cnt > 0) {
			System.out.println("등록 성공!");
			response.sendRedirect("Contest.jsp");
		}else {
			System.out.println("등록 실패..");
			response.sendRedirect("Contest.jsp");
		}
     
    }
}
