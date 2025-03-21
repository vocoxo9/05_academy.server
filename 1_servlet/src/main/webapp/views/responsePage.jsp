<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답용 페이지</title>
	<style>
		span {color : yellowgreen;}
	</style>
</head>
<body>
	<!-- HTML 주석 -->
	<%-- JSP 주석 : 개발자도구에도 표시되지 않음--%>
	<h1>@@ 응답 완료 @@</h1>
	
	<%-- 자바 코드 작성하기 --%>
	<%
		// System.out.println("Hi! JSP");
		// * 스크립틀릿(scriptlet) : HTML문서 내에서 Java코드를 작성할 수 있는 영역
		
		// * 서블릿을 통해 전달된 데이터를 추출
		
		String name = (String)request.getAttribute("name");
		String gender = (String)request.getAttribute("gender");
		String age = (String)request.getAttribute("age");
		String addr = (String)request.getAttribute("addr");
		String height = (String)request.getAttribute("height");
		String[] foods = (String[])request.getAttribute("foods");
	%>
	
	<%-- 변수의 값을 화면상에 출력하고자 할 때, %뒤에 =를 붙여서 작성 --%>
	이름 : <span><%= name %></span> <br>
	성별 : 
		<% if (gender == null) {%>
			선택하지 않음
		<% } else {%>
			<span><%= gender %></span> 
		<% } %>
		<br>
	나이 : 
		<% if (age.isEmpty()) { %>
			알 수 없음
		<% } else { %>
			<span><%= age %></span> 
		<% } %>
			<br>
	주소 : <span><%= addr %></span> <br>
	키 : <span><%= height %></span> <br>
	좋아하는 음식 : 
	<%  if (foods == null){ %>
		선택된 음식이 없습니다.	
	<% } else { %>
		<span><%= String.join(", ", foods) %></span>
		<ol>
	<% for (String f : foods){ %>
		<li><%= f %></li>
		<% } %>
		</ol>
	<% } %>
	
	
	
</body>
</html>