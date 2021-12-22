<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입하기</title>
</head>
<body>
<!-- 해당 내용을 특정 데이터로 보내려면 form으로 감싸야함 -->

<form method = "post" action = "/db/ex02_insert">
	<div>
		<label>이름 : </label><input type = "text" name = "name" >
	</div>
	
	<div>
		<label>생년월일 : </label><input type = "text" name = "yyyymmdd">
	</div>
	<div>
		<label>자기소개</label><br>
		<textarea rows="5" cols="50" name = "introduce"></textarea>
	</div>
	<input type="submit" value="가입">
	
</form>	

</body>
</html>