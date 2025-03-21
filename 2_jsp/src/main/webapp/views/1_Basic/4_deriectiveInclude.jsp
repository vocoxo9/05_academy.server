<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP - include 지시어</title>
</head>
<body>
	<h1>include 지시어</h1>
	
	<div style="border: 2px solid yellowgreen">
		<%@ include file="2_scriptElement.jsp" %>
	</div>
	
	1부터 100까지의 합 = <%= sum %> <br>
	* 포함된 jsp 페이지에 선언된 변수를 현재 페이지에서 사용할 수 있음
</body>
</html>