<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String length = request.getParameter("length");
	String[] types = request.getParameterValues("type");
	double result;
	String resultString = "";
	for(int i = 0; i <types.length; i++){
		if(types[i].equals("inch")){
			result = Integer.parseInt(length)/2.54;
			resultString += result + " in<br>";
		}else if(types[i].equals("yard")){
			result = Integer.parseInt(length)/91.44;
			resultString += result + " yard<br>";
		}else if(types[i].equals("ft")){
			result = Integer.parseInt(length)/30.48;
			resultString += result + " ft<br>";
		}else if(types[i].equals("meter")){
			result = Integer.parseInt(length)/100;
			resultString += result + " m<br>";
		}
	}

%>

<h1>변환 결과</h1>	
<%= length %> cm <br><hr>
<%= resultString %>
</body>
</html>