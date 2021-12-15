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
List<String> fruits = new ArrayList<>();
fruits.add("사과");
fruits.add("바나나");
fruits.add("빨기");
fruits.add("샤인머스캣");
fruits.add("귤");
%>

<table border= "1">
<%for(String fruit : fruits){%>
	<tr><td><%= fruit %></td></tr><%}%>
</table>

	
<%
	//과목과 성적 맵
	Map<String, Integer> scores = new HashMap<>();
	scores.put("국어", 85);
	scores.put("수학", 90);
	scores.put("영어", 100);

%>

<table border = "1">
<thead><tr><th>과목</th><th>성적</th></tr></thead>
<tbody>
<% Set<String> keys = scores.keySet();
for(String name : keys){%>
<tr><td><%=name %></td><td><%=scores.get(name) %></td></tr>	
<%}%>

</tbody></table>
</body>
</html>