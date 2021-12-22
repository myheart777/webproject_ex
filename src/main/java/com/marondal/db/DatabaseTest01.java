package com.marondal.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test01")
public class DatabaseTest01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		MysqlService mysqlService= MysqlService.getInstance();
		mysqlService.connect();

		String insertQuery = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`)\r\n"
				+ "VALUES\r\n"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000)";
		int count = mysqlService.update(insertQuery);
		out.println("삽입 : " +  count);
		
		String query = "SELECT * FROM `real_estate` ORDER BY `id` DESC LIMIT 10";
		ResultSet resultSet = mysqlService.select(query);
		
		try {
			while(resultSet.next()) {
				out.print("매물 주소 : " + resultSet.getString("address"));
				out.print(", 면적 : " + resultSet.getInt("area") );
				out.print(", 타입 : " + resultSet.getString("type") + "\n");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		
	}
}
