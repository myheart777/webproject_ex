<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MELONG</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<%@ include file = "data.jsp" %>
<%
	Integer musicId = Integer.parseInt(request.getParameter("id"));
	String idString = request.getParameter("id");
	Map<String, Object> targetMap = null;
	if(idString != null){
		//id를 통한 검색
		Integer musicId = Integer.parseInt("idString");
		for(Map<String, Object> music : musicList){
			Integer id = (Integer)music.get("id");
			if(musicId.equals(id)){
				targetMap = music;
			}
		}
	}
	String title = request.getParameter("title");
	if(title != null){
		//title을 통한 검색 	
		for(Map<String, Object> music : musicList){
			if(title.equals(music.get("title"))){
				targetMap = music;
			}
		}
		
	}
	Integer time = (Integer)targetMap.get("time");
%>
	<div class = "container">
		<header class="d-flex">
			<div class="text-success"><b><h2>Melong<h2></h2></b></div>
			<form method = "get" action = "/jsp_template/test02/detail.jsp">
			<div class="d-flex"><input type ="text" class="form-control" name="title"><button class="btn btn-success" type="submit">검색</button></div>
		</form></header>
	
		<nav>
			<ul class="nav text-success">
				<li class="nav-item"><a href = "#" class="nav-link">멜롱차트</a></li>
				<li class="nav-item"><a href = "#" class="nav-link">최신음악</a></li>
				<li class="nav-item"><a href = "#" class="nav-link">장르음악</a></li>
				<li class="nav-item"><a href = "#" class="nav-link">멜롱DJ</a></li>
				<li class="nav-item"><a href = "#" class="nav-link">뮤직어워드</a></li>
			</ul>
		
		
		</nav>
		
		<section style = "text-align:center">
			<article>
			</article>
			
			
			<% if (targetMap != null){ %>
			<article>
				<h3>곡 목록</h3>
				<table class ="table">
					<thead><b>
						<th>no</th>
						<th>제목</th>
						<th>앨범</th>
					</b></thead>
					
					<tbody>
						<tr>
							<td>1</td>
							<td><a href ="http://localhost:8080/jsp_template/test02/detail.jsp?id=<%=music.get("id")%>"><%=music.get("title") %></a></td>
							<td>palette</td>
						</tr>
					
					</tbody>
				</table>	
			</article>
		</section>
		<%} else { %>
		
			<article>검색 결과 없음
			</article>
		<%} %>
		<footer class = "text-secondary " style = "text-align:center">Copyright 2021. Melong All Rights Reserved</footer>
		
	</div>


</body>
</html>