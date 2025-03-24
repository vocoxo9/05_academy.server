<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
header>article {
	background-color: #4c6588;
	color: #ccdeeb;
	text-align: center;
	padding: 50 0;
	font-family: "Gugi", sans-serif;
	font-size: 3rem;
	font-weight: 900;
}

#menu {
	display: flex;
	justify-content: space-between;
	background-color: #4c6588;
}

#menu a {
	padding: 1em;
	display: inline-block;
	flex: 1;
	margin: 0.5em;
	text-align: center;
	text-decoration: none;
	color: #ccdeeb;
	font-size: 1.2rem;
}

#menu a:hover {
	background-color: #ccdeeb;
	color: #4c6588;
	cursor: pointer;
}
</style>
</head>
<body>
	<header>
		<article>KH Company</article>
	</header>
	<hr>
	<nav id="menu">
		<a href="emp.do">사원 관리</a> <a href="#">부서 관리</a> <a href="#">직급 관리</a>
	</nav>
</body>
</html>