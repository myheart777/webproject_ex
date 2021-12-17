<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.*" %>    
     <%@ page import="java.util.Calendar" %>    
 <%@ page import = "java.text.SimpleDateFormat" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
Calendar calendar = Calendar.getInstance();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
calendar.add(Calendar.DATE,-1);%>
<div class = "container">
<h3><b>오늘부터 1일</b></h3>
<div class = "display-4">오늘 : <%= formatter.format(calendar.getTime()) %></div>


<h2>

<% for(int i = 1; i <= 10; i ++){
	calendar.add(Calendar.DATE,100);%>
	<%=i* 100%>일 : <%=formatter.format(calendar.getTime()) %><br>
<%}%>
</h2>

</div>
</body>
</html>