package com.marondal.db;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test02_delete")
public class DbTest02Delete extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		MysqlService mysqlService =MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `favoritesite` WHERE `id` =" + id +";";
		
		mysqlService.update(query);
		mysqlService.disconnect();
		response.sendRedirect("/db/test01_2.jsp");
		
		
	}

}
