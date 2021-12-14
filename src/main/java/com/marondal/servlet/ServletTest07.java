package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class ServletTest07 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		//회원 id, 이름, 이메일 파라미터로 받고, 테이블로 예쁘게 보여준다.
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head></head><body>");
		
		if(!address.contains("서울시")) {
			out.println("배달 불가 지역입니다");
		}else if(card.equals("신한카드") ) {
			out.println("결제 불가 카드입니다");
		}else {		
		out.println(address + " 배달 준비중<br>");
		out.println("<hr>");
		out.println("결제금액 : " + price + "원<br>");	
		}
		
		out.println("</body></html>");
	}

}
