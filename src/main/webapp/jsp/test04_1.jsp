<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>사칙연산</h1>
<form name = "calculation" method = "post" action="/jsp/test04_2.jsp">
<input type = "text" name="num1">
<select name="cal">
<option>+</option>
<option>-</option>
<option>X</option>
<option>/</option>
<input type = "text" name="num2">
<button type="submit">계산</button>
</select>

</form>
</body>
</html>