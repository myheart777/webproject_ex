<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

<%@ include file = "data.jsp" %>


<%
	Integer musicId = Integer.parseInt(request.getParameter("id"));

%>
<div class ="container width=1000px">
		<jsp:include page ="header.jsp" />	
		<jsp:include page ="menu.jsp" />
		
		<section>
		
		<% 
		 	for(Map<String, Object> music : musicList){
		 		Integer id = (Integer)music.get("id");	
		 		if(musicId.equals(id)){
		 			
		 			Integer time = (Integer)music.get("time");
		 			
		 			
		 		
		%>
		
			<article class="music-info">
				<h4>곡정보</h4>
				<div class="info-box d-flex border border-success p-3">
					<div class = "album-img">
						<img src = "<%= music.get("thumbnail") %>" width="150";>
					</div>
					<div class = "detail ml-3">
						<div class="display-4"><%=music.get("title") %></div>
						<div class="text-success font-weight-bold"><%=music.get("singer") %></div>
						<div><small>앨범 : <%=music.get("album") %></small></div>
						<div><small>재생시간 : <%= time/ 60 %>:<%= time % 60 %></small></div>
						<div><small>작곡가 : <%=music.get("composer") %></small></div>
						<div><small>작사가 : <%=music.get("lyricist") %></small></div>
					</div>
				</div>
			</article>
			<article class="music-lyrics">
			가사정보 없음 
			
			</article>
			
			<%}
		} %>
		</section>	
		<jsp:include page ="article1.jsp" />
		<jsp:include page ="article2.jsp" />
		<jsp:include page ="footer.jsp" />
</div>
</body>
</html>