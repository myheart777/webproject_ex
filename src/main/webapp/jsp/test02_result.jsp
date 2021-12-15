<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Date nowTime = new Date();
	SimpleDateFormat dateFormatter = new SimpleDateFormat("오늘 날짜 yyyy년 MM월 dd일");
	SimpleDateFormat timeFormatter = new SimpleDateFormat("현재 시간 hh:mm:ss");
	
	
	String dateString = dateFormatter.format(nowTime);
	String timeString = timeFormatter.format(nowTime);
	
	String value = request.getParameter("type");
	String formatString = null;
	if(value.equals("date")){
		formatString = dateString;
	}else if(value.equals("time")){
		formatString = timeString;
	}
%>
현재 날짜와 시간은 <%= nowTime %> 입니다.
<br>-------------------------------------------------------------------<br>

<%  %>
<%=value%><br><br>


<h1><%= formatString%></h1>


<%-- 
현재 날짜는 <%=dateFormatter.format(nowTime) %> 입니다. <br>
현재 시간은<%= timeFormatter.format(nowTime) %> 입니다. --%>

</body>
</html>