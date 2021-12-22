package com.marondal.db;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test02/test02_insert")
public class DbTest02Insert extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query ="INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `picture`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('마론달', 'http://marondal.com', now(), now());";
		mysqlService.update(query);
		mysqlService.disconnect();
		
		response.sendRedirect("/db/test02/test02_1.jsp");
	}

}
