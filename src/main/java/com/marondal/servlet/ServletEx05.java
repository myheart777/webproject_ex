package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class ServletEx05 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//response.setCharacterEncoding("utf-8");
		//request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		
		out.println("<html><head><title>회원정보</title></head><body>");
		
		out.println("<h2> 이메일 : " + email + "</h2>");
		out.println("<h2> 이름 : " + name + "</h2>");
		
		out.println("</body></html>");
	}

}
