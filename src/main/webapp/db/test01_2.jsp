<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "com.marondal.common.MysqlService" %>
    <%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	String query ="SELECT * FROM `favoritesite` ORDER BY `id` DESC";
	ResultSet resultSet = mysqlService.select(query);
%>
	<table border = "1">	
	<thead>
	<tr>
		<th>사이트</th>
		<th>사이트 주소</th>
		<th></th>
	</tr>
	</thead>
	
	<tbody>
	<% while(resultSet.next()) {%>
	<tr>
		<td><%= resultSet.getString("site")%></td>
		<td><%= resultSet.getString("address")%></td>
		<td><a href = "/db/test02_delete?id=<%= resultSet.getInt("id")%>">삭제</a></td>
	</tr>
	
	<% } %>
	</tbody>	
	</table>
</body>
</html>