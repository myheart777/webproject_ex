<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메뉴검색</h1>
<form name = "search" method = "get" action="/jsp/test07_2.jsp">
<input name ="menuSearch">
<label><input type = "checkbox" name = "exception" value = "true">4점 이하 제외</label><br>
<button type = "submit">검색</button>

</form>
</body>
</html>