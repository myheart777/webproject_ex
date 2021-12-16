<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<String> goodsList = Arrays.asList(new String[]{ 
	    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
	});
	String tableRow = "";
	for(int i = 0; i < goodsList.size(); i++){
		tableRow += "<tr><td>"+i+"</td><td>"+ goodsList.get(i)+"</td></tr>";
	}

%>

<h1>장 목록</h1>
<table>
<tr><b>
	<td>번호</td>
	<td>품목</td></b>
</tr>
<%= tableRow %>

</table>
</body>
</html>