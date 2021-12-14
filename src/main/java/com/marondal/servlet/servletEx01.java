package com.marondal.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		//MIME 표준을 통해 정의된 타입 넘겨줌 - 기본 텍스트 문자형으로 보내주겠다
		response.setContentType("text/plain");
		//response에 화면에 표출할 내용 입력
		PrintWriter out = response.getWriter();
		
		//현재 날짜 특정 포멧으로 만들기 
		// date 객체를 통해 오늘 날짜 얻어내기
		Date now = new Date();
		
		//simple date format을 통해 규격을 맞춰준다: 오늘의 날짜는 2021년 5월 20일
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		String dateString = formatter.format(now);
	
		out.println("오늘의 날짜는 " + dateString);
		
	}
}
