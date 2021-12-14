package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class ServletTest05 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		///response.getWriter오류뜨면 기다렸다가 declare 해준다 
		
		String number = request.getParameter("number");
		
		
		out.println("<html><head></head><body>구구단 링크<br>");
		out.println("<a href = '/servlet/quiz05?number=5'>5단</a><br>");
		out.println("<a href = '/servlet/quiz05?number=7'>7단</a><br>");
		out.println("<a href = '/servlet/quiz05?number=9'>9단</a><br></body></html>");

	
		
	}

}
