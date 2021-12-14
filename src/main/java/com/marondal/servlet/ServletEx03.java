package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class ServletEx03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//이름, 나이 
		String name = request.getParameter("name");
		String ageString = request.getParameter("age");
		
		int age = Integer.parseInt(ageString);
		age ++;
		
		out.println("<html><head><title></title></head>");
		out.println("<body> <h2>이름 : </h2> "+ name + "<h2>나이 : </h2>" + age + "</body></html>");
//		{"name" :"김인규", "age" : 29}
//		out.println("{\"name\" :\""+name+"\", \"age\" : "+ age +"}");
//json을 편하게 보기 위한 크롬의 확장 프로그램 오른쪽버튼-도구더보기-확장프로그램-(왼쪽)구글웹스토어열기-프로그램 검색 json viewr 
		
		
		
	}
}
