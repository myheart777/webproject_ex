<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.Arrays" %>

<!-- 이렇게 정리하면 더 편하다..실제로는 정확하게 해야 함.. -->
<%@ page import = "java.util.*" %>

 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

1. 점수들의 평균 구하기<br>
<%
int[] scores = {80, 90, 100, 95, 80};
int sum = 0; 
for (int i = 0; i < scores.length; i++){
	sum += scores[i];
}
int aver = sum / scores.length;
%>
점수 평균은 <%= aver %>입니다.<br><br>

2. 채점 결과 <br>
<%
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"}); 
int count = 0;
for(int j = 0; j < scoreList.size(); j++){
	if(scoreList.get(j) == "O"){
		count ++;
	}
}
%>

<!-- 정답 -->
<%
List<String> scoreList1 = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
int checkscore = 0;
for(String check:scoreList){
	if(check.equals("0")){
		checkscore += 10;
	};
}
%>



채점 결과는 <%= count * 10 %>점 입니다.
<br><br>


3. 1부터 n까지의 합계를 구하는 함수<br>
<% 

int sum1 = 0 ;
for(int j = 1; j <= 50; j ++){
 	sum1 += j; 
	}%>
1에서 50까지 합은 <%= sum1 %>입니다.
	
}
<!-- 정답 -->
<%
public int allSum(int number){
	int score = 0;
	for (int i = 1; i<= number; i++){
		score += 1;
	}
	return score;
} %>

<br><br>

4. 나이 구하기<br>
<% 
String birthday = "20010820" ;
int birthYear = Integer.parseInt(birthday.substring(0,4));
%>
20010820의 나이는 <%= 2021 - birthYear %>살 입니다.
</body>
</html>