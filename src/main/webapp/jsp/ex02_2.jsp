<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- -- jsp에서 파라미터 받기 -->--%>
	<h1>아이디 : 
	<%=request.getParameter("user_id") %>
	</h1>
	
	<% 
	String ageString = request.getParameter("age");
	int age = Integer.parseInt(ageString);
	%>
	
	<h1> 나이 : <%= age + 1 %></h1>
</body>
</html>