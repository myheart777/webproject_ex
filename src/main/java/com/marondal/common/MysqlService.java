package com.marondal.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	//객체가 무분별하게 만들어지는 것을 방지하고, 클래스 내에서 객체 생성을 관리하는 방식
	private static MysqlService mysqlService = null;
	
	//접속 주소, 아이디, 패스워드
	private String url;
	private String id;
	private String password;
	
	//접속 관리 객체
	private Connection conn;
	private Statement statement;
	
	//객체 생성해서 돌려주는 메소드
	//싱글턴 패턴 = 객체 관리를 해당하는 클래스 내에서 하는 것. 
	//static붙이면 객체가 생기지 않아도 해당 메소드를 사용할 수 있음. 
	public static MysqlService getInstance() {
		//객체가 생성되어있지 않으면
		if(mysqlService == null) {
			mysqlService = new MysqlService();
			//최초에 한 번만 생성해라
		}return mysqlService;
		
	}
	
	private MysqlService() {
		//외부에서 호출되면 안됨. =>private
		this.url = "jdbc:mysql://localhost:3306/test_db";
		this.id = "root";
		this.password = "1234";		
	}
	
	//접속 기능
	public void connect() {
		try {
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		conn = DriverManager.getConnection(this.url, this.id, this.password);
		statement = conn.createStatement();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	
	}
	
	//접속 끊기 기능 
	public void disconnect() {
		try {
			this.statement.close();
			this.conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//select 쿼리 수행 기능
	public ResultSet select(String query) {
		try {
			return this.statement.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	//insert, update, delete 쿼리 수행 기능 
	public int update(String query) {
		try {
			return this.statement.executeUpdate(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
	

}
