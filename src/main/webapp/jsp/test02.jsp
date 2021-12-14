<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy년 MM월 dd일");
	SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

현재 날짜와 시간은 <%= nowTime %> 입니다.
<br>-------------------------------------------------------------------<br>

현재 날짜는 <%=date.format(nowTime) %> 입니다. <br>
현재 시간은 <%=time.format(nowTime) %> 입니다.
<button>현재 날짜</button> <br>
<button>현재 시간</button>
</body>
</html>