package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class ServletTest06 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();

		int number1 = 120;
		int number2 = 15;
		//{"addition" : 135, "subtraction" : 105, "multiplication" : 1800, "division" : 8}
		out.println("{\"addition\" : "+ (number1 + number2) +", \"subtraction\" :" + (number1 - number2) + ", \"multiplication\" :" + (number1 * number2) + ", \"division\" : " + (number1 / number2) + "}");

		
//		out.println("<html><head></head><body>");
//		out.println("<a href ='/servlet/quiz06?number1=120&number2=15' >120, 15</a><br>");
//		out.println("<a href ='/servlet/quiz06?number1=1500&number2=70' >1500, 70</a><br>");
//		out.println("<a href ='/servlet/quiz06?number1=96&number2=54' >96, 54</a><br>");
//		out.println("</body></html>");
	}

}
