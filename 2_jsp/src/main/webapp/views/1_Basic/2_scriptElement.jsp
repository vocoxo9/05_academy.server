<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 원소</title>
</head>
<body>
	<h1>스크립트 원소(문법)</h1>
	
	<%
		/*
			스크립틀릿 : 해당 영역 내에서는 자바 코드 작성 가능
		*/
		int sum = 0;	// 변수 선언 가능
		
		// 제어문 사용 가능
		for(int i=1; i<=100; i++){
			sum += i;
		}
	%>
	
	<p>
		화면에 출력 <br>
		- 표현식을 사용하여 출력 : <%= sum %> <br>
		- 스크립틀릿을 사용하요 출력 : <% out.println(sum); %>
		<%-- out : JSP 내장 객체 중 하나(PrintWriter 타입 객체) --%>
	</p>
	
	<%
		String[] arr = {"딸기","사과","체리","복숭아"};
	%>
	<h5>배열 길이 : <%= arr.length %></h5>
	<h5>배열에 담긴 값 : <%= String.join(", ", arr) %></h5>
</body>
</html>