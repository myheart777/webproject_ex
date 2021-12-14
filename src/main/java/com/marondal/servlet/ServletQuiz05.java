package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class ServletQuiz05 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String number = request.getParameter("number");
		int numberInt = Integer.parseInt(number);
		
		out.println("<html><head></head><body>");
		
		for(int i = 1; i <= 9; i++) {
		out.println(numberInt + " * " + i + " = " + numberInt * i + "<br>");
			
		}
		
		out.println("</body></html>");
		
		
	}

}
