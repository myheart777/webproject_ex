<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file = "data.jsp" %>



<div class ="container width=1000px">
		<jsp:include page ="header.jsp" />	
		<jsp:include page ="menu.jsp" />	
		<jsp:include page ="article1.jsp" />
		<jsp:include page ="article2.jsp" />
		<jsp:include page ="footer.jsp" />
</div>
</body>
</html>