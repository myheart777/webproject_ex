<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "com.marondal.common.MysqlService" %>
    <%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

<% MysqlService mysqlService = MysqlService.getInstance();
mysqlService.connect();
String query = "SELECT * FROM `used_goods` ";
ResultSet resultSet = mysqlService.select(query);
%>

	<jsp:include page ="header.jsp" />
	
	
	<div class="article d-flex m-3">
<% while(resultSet.next()){ %>
	<div class = "contents m-3">
	<div class="picture"><img src = "<%= resultSet.getString("picture")%>" style="width: 150px; height:150px;"></div>
	<div class="title"><%= resultSet.getString("title")%></div>
	<div class="description"><%= resultSet.getString("description")%></div>
	<div class="price"><%= resultSet.getInt("price")%></div>
	<div class="sellerId"><%= resultSet.getInt("sellerId")%></div>
	</div>
	<% } %>
	</div>
	
	<div class ="footer d-flex " sytle ="margin 0 auto">
	Copyright
	
	</div>
</body>
</html>