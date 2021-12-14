package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")

public class ServletTest04 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");		
		PrintWriter out = response.getWriter();
		
		for(int i = 1; i <= 30; i++) {
			out.print(i +"번째 리스트 \n");
		}
		
		
	}
	
}
