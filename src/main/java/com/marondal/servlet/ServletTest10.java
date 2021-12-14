package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class ServletTest10 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		out.print("<html><head></head><body>");

	
		
		if(!id.equals(userMap.get("id"))) {
			out.print("아이디가 일치하지 않습니다");
		}else if(!password.equals(userMap.get("password"))) {
			out.print("패스워드가 일치하지 않습니다");
		}else {
			out.print("<h1>"+userMap.get("name") + "님 환영합니다</h1>");
		}
		
		out.print("</body></html>");

	}
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};

}
