package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//클래스 위 어노테이션 추가 통해 쉽게 넣기 - web.xml 활용하지 않아도 쉽게 url mapping 끝남 
//자동으로 기존에 했던 xml 기능을 자동으로 만들어줌 
@WebServlet("/servlet/ex02")

public class ServletEx02 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//html을 통해서 1부터 10까지의 합을 전달 
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		/// 1부터 10까지 합 
		int sum = 0;
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		//
		out.println("<html><head><title>합계</title></head>");
		out.println("<body>합계 : <strong>"+ sum +"</strong></body></html>");

	}

}
