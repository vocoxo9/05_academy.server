<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pizza order</title>
<style>
	p {font-weight : bold;}
	#pizza {color : red;}
	#topping {color : green;}
	#side {color : blue;}
	#total {text-decoration : underline;}
	h3{color : pink;}
</style>
</head>
<body>
	<% 
		String pizza = (String)request.getAttribute("pizza");
		String[] topping = (String[])request.getAttribute("topping");
		String[] side = (String[])request.getAttribute("side");
	%>
	<h1>주문 내역</h1>
	<p>
		피자는 <span id="pizza"><%= pizza %></span>, 
		토핑은
		<% if (topping == null) { %>
		<% } else { %>
		<span id="topping"><%= String.join(", ", topping) %></span>
		<% } %>
		, 사이드는
		<% if (side == null) { %>
		<% } else { %>
		<span id="side"><%= String.join(", ", side) %></span>
		<% } %>
		주문하셨습니다.
		
<%--	토핑은 <span id="topping"><%= String.join(", ", topping) %></span>,
		사이드는 <span id="side"><%= String.join(", ", side) %></span> 주문하셨습니다. --%>
	</p>
	
	<p>총합 : <span id="total"></span> 원</p>
	
	<h3>즐거운 식사시간 되세요 ~</h3>
</body>
</html>