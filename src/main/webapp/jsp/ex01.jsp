<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import = "java.util.List" %>
 <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html주석 -->
<%--JSP주석 : 페이지 소스 보기에는 안보여진다. 서버에서 처리되고 사라진다--%>

<%

	int sum = 0;
	for (int i = 1; i <= 10; i++){
		sum += i;
	}

%>
<%--html태그랑 전혀 상관 없이 그걸 표현하는 그 자리에 들어간다 --%>
<strong>합계 : <%= sum %></strong>

<%
	List<String> animals = new ArrayList<>();
	animals.add("dog");
	animals.add("cat");
%>

<%= animals.get(0)%>
<%= animals.get(1)%>


<%-- 선언 (멤버 변수, 메소드 선언) --%>
<%!

	private int number = 10;
	// Hello world 라는 문자열 리턴하는 메소드
	public String getHelloWorld (){
		return "hello world";	
	}

%>

<%= number + 20 %>
<br>
<%= getHelloWorld() %>



</body>
</html>