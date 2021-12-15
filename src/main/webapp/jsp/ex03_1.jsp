<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method = "post" action = "/jsp/ex03_2.jsp">
	1. 별명 : <input type = "text" name = "nickname"><br>
	<!--  라디오 버튼  -->
	2. 강아지 or 고양이 <br>
	<label>고양이<input type = "radio" name = "animal" value = "cat"></label>
	<label>강아지<input type = "radio" name = "animal" value = "dog"></label><br>
	3.좋아하는 과일 선택<br>
	<select name ="fruit">
		<option>사과</option>
		<option>바나나</option>
		<option>복숭아</option>
		<option>딸기</option>
		<option>포도</option>
		<!-- value를 지정해주면 그게 우선순위가 더 높아서 그걸로 전달. 그게 없으면 그냥 option안에 있는 값으로 전달 -->
	</select><br>
	4. 선호하는 음식을 모두 고르세요<br>
	<label>민트초코<input type="checkbox" name="food" value="mincho"></label>
	<label>하와이안피자<input type="checkbox" name="food" value="pizza"></label>
	<label>번데기<input type="checkbox" name="food" value="pupa"></label>
	<!-- 체크박스로 여러개 값을 전달할 경우, 사실은 배열이다. -->
	<button type = "submit">전송</button>
	</form>

</body>
</html>