<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String nickName = request.getParameter("nickname");
	String animal = request.getParameter("animal");
	String fruit = request.getParameter("fruit");
	//String food = request.getParameter("food");
	//<!-- 체크박스로 여러개 값을 전달할 경우, 사실은 배열이다. -->
	String[] food = request.getParameterValues("food");
	String foodList = "";
	for(int i = 0; i <food.length; i++){
		foodList += food[i] + " ";
	}
%>

<table border = 1>
<tr>
	<td>별명</td>
	<td><%= nickName %></td>
</tr>

<tr>
	<td>동물</td>
	<td><%= animal %></td>
</tr>

<tr>
	<td>과일</td>
	<td><%= fruit %></td>
</tr>

<tr>
	<td>음식</td>
	<td><%= foodList %></td>
</tr>

</table>
</body>
</html>