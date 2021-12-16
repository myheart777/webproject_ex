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
String menuSearch = request.getParameter("menuSearch");
String exception = request.getParameter("exception");

List<Map<String, Object>> list = new ArrayList<>();
Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
list.add(map);



%>

<h1>검색 결과</h1>
<table>
<thead><tr><b>
	<thead>메뉴</thead>
	<thead>상호</thead>
	<thead>별점</thead>
</b><tr></thead>
<tbody>
 <% %>
 
<%
for(int i = 0; i < list.size(); i++){
	String pointString = list.get(i).get("point").toString();
	double point = Double.parseDouble(pointString);
	
	if(menuSearch.equals(list.get(i).get("menu").toString()) ){
		

		if( exception == null |( exception != null && point >= 4.0 )){%>
					 
			<tr>
				<td><%= list.get(i).get("name").toString() %></td>
				<td><%= list.get(i).get("menu").toString() %></td>
				<td><%= list.get(i).get("point").toString() %></td>
				<td></td>
			</tr>
		<% }	
		
	}
	
	
	
} %>


</tbody>


</table>
</body>
</html>