package com.marondal.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/ex00")
public class DatabaseEx00 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println("Database Hello World");
		try{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			String url = "jdbc:mysql://localhost:3306/test_db";
			String userId = "root";
			String password = "1234";
			
			Connection connection = DriverManager.getConnection(url, userId, password);
			Statement statement = connection.createStatement();
			
			
			//중고 물품 리스트 가져오기
			String selectQuery = "SELECT * FROM `used_goods`";
			ResultSet resultSet = statement.executeQuery(selectQuery);
			
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				out.println("제품명 : " + title+"\n");
				int price = resultSet.getInt("price");
				out.println("가격 : " + price+"\n");
			}
			
			
//			String insertQuery="INSERT INTO `used_goods`\r\n"
//					+ "(`title`, `price`, `description`, `sellerId`, `createdAt`, `updatedAt`)\r\n"
//					+ "VALUES\r\n"
//					+ "('고양이 간식 팝니다', 2000, '저희 고양이가 까다로워서 안먹네요', 5, now(), now());";
//			
//			int count = statement.executeUpdate(insertQuery);
			//몇 행이 수행됐는지 리턴해준다. 그래서 int count 
			
//			out.println("삽입 : " + count);
		}catch(SQLException e) {
			e.printStackTrace();
		
		}
	}

}
