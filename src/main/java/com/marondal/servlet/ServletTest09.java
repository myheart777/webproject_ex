package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class ServletTest09 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.print("<html><head></head><body><h1>");
		out.print(name + "님 지원이 완료되었습니다</h1><hr>");
		out.print("지원내용<br>" + introduce);
		
		out.print("</body></html>");

	}
	

}
