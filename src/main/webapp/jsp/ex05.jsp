<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	SimpleDateFormat  formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	String formatString = formatter.format(today.getTime());

%>
<br>
<%= today  %><br>
<%= formatString  %>
<%
	Calendar calendar = Calendar.getInstance();
	calendar.add(Calendar.DATE, 20);
	calendar.add(Calendar.MONTH, 5);
	calendar.add(Calendar.YEAR, -10);
	
%>

<%= formatter.format(calendar.getTime()) %>



<%--날짜 비교 --%>
<% 
	//앞에 것이 뒤에거보다 크다 : 양수
	//앞에 것이 뒤에거보다 작다 : 음수
	//같다 : 0  = today - calendar 라고 생각하면 됨 
	int result = today.compareTo(calendar);
	if(result > 0 ){
		out.println("today가 더 크다 ");
	}else if (result < 0 ){
		out.println("today가 더 작다");
	}else{
		out.println("같다.");
	}
%>
</body>
</html>