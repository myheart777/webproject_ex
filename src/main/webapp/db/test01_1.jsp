<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.marondal.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
%>
<form method = "post" action = "/db/test01_insert">
	<h1>즐겨찾기 추가</h1>
	<label>사이트명 : </label><input type = "text" name="site">
	<label>사이트 주소 : </label><input type = "text" name="address">
	<input type ="submit" value = "추가">
</form>
</body>
</html>