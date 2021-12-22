package com.marondal.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;


@WebServlet("/db/ex02_insert")
public class DatabaseEx02Insert extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {	
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");

		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `introduce`,  `createdAt`, `updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "('" + name + "', '" + yyyymmdd + "', '" + introduce +"', now(), now());";
		out.println(query);
		
		
		mysqlService.update(query);
		mysqlService.disconnect();
		//다른 페이지로 바로 이동
		//redirect
		
		response.sendRedirect("/db/ex02_1.jsp");
		
	}

}
