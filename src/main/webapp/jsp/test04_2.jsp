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
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String cal = request.getParameter("cal");

	double result = 0;
	if (cal.equals("+")){
		result = Integer.parseInt(num1) + Integer.parseInt(num2);
	}else if (cal.equals("-")){
		result = Integer.parseInt(num1) - Integer.parseInt(num2);
	}else if (cal.equals("X")){
		result = Integer.parseInt(num1) * Integer.parseInt(num2);
	}else if (cal.equals("/")){
		result = Integer.parseInt(num1) / (double)Integer.parseInt(num2);
	}
%>
<%= num1 %>
<%= cal %>
<%= num2 %> = 
<%= result %>

</body>
</html>
