package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class ServletEx04 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		//회원 id, 이름, 이메일 파라미터로 받고, 테이블로 예쁘게 보여준다.
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
		
		// 테이블로 출력 
		out.println("<html><head><title>회원정보</title></head>");
		out.println("<body>");
		out.println("<table border = 1>");
		
		out.println("<tr>");
		out.println("<th>아이디</th> <td> "+ userId + "</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th>이름</th> <td> "+ name + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<th>이메일</th> <td> "+ email + "</td>");
		out.println("</tr>");
		
		out.println("</table>");
		out.println("<td></td>");
	}
	

}
