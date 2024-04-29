package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.Contest;
import com.smhrd.model.ContestDAO;

@WebServlet("/FilterContest")
public class FilterContest extends HttpServlet {
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    System.out.println("요청들어옴");
			
			boolean isActive = Boolean.parseBoolean(request.getParameter("active"));
		    boolean isEnded = Boolean.parseBoolean(request.getParameter("ended"));
		    ContestDAO dao = new ContestDAO();
		    List<Contest> contests;

		    if (isActive) {
		        contests = dao.ActiveContest();
		    } else if (isEnded) {
		        contests = dao.EndedContest();
		    } else {
		        contests = dao.ShowContest();
		    }

		    Gson gson = new Gson();
		    String json = gson.toJson(contests);
		    System.out.println("제이슨:"+json);
		    response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(json);
		}


    }
   



