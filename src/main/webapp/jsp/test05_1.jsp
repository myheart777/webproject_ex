<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>길이 변환</h1>
<form name = "trans" type="post" action="/jsp/test05_2.jsp">
<input name = "length">cm<br>
<label>인치 <input type = "checkbox" name = "type" value="inch"></label>
<label>야드 <input type = "checkbox" name = "type" value="yard"></label>
<label>피트 <input type = "checkbox" name = "type" value="ft"></label>
<label>미터 <input type = "checkbox" name = "type" value="meter"></label>
<button type = "submit">변환</button>

</form>
</body>
</html>