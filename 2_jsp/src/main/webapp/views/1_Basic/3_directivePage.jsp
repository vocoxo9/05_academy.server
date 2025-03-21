<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %> 
    <%-- page import="java.util.ArrayList" | errorPage="error500.jsp" --%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP - page 지시어</title>
</head>
<body>
	<h1>page 지시어</h1>
	
	<% 
		ArrayList<String> list = new ArrayList<>();
		list.add("사과");		
		list.add("딸기");
		list.add("포도");
		list.add("체리");
	%>
	
	<h2>리스트의 길이 : <%= list.size() %></h2>
	<h2>첫번째 위치의 값 : <%= list.get(0) %></h2>
	<h2>다섯번째 위치의 값 : <%= list.get(4) %></h2>
</body>
</html>