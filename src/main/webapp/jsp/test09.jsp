<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.*" %>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Calendar now = Calendar.getInstance();
int year = now.get(Calendar.YEAR);
int month = now.get(Calendar.MONTH);
int date = now.get(Calendar.DATE);


%>

<h3><b>오늘부터 1일</b></h3>
오늘 : <%= date %>
<h2>
100일 : 

</h2>
</body>
</html>