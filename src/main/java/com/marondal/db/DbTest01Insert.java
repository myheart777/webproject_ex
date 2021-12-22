package com.marondal.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test01_insert")
public class DbTest01Insert extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String site = request.getParameter("site");
		String address = request.getParameter("address");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query ="INSERT INTO `favoritesite`\r\n"
				+ "(`site`, `address`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('" + site + "', '" + address +"', now(), now());";
		
		out.println(query);
		
		mysqlService.update(query);
		mysqlService.disconnect();
		
		response.sendRedirect("/db/test01_2.jsp");
		
	}

}
