package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class ServletQuiz06 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();

		String number1 = request.getParameter("number1");
		String number2 = request.getParameter("number2");
		
		int addition = Integer.parseInt(number1) + Integer.parseInt(number2);
		int substraction = Integer.parseInt(number1) - Integer.parseInt(number2);
		int multiplication = Integer.parseInt(number1) * Integer.parseInt(number2);
		int division = Integer.parseInt(number1) / Integer.parseInt(number2);
		
		String json = new Gson().toJson(number1,number2);
		
		out.println("jsonObject");
		out.flush();
		
	}

}
