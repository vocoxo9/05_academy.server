<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Action Tag - JSTL</title>
<style>
	h4{text-decoratioin : underline;}
</style>
</head>
<body>
	<h2>* JSTL 선언 방법</h2>
	<p>
		JSTL을 사용하기 위해서 해당 jsp 페이지 상단데 taglib 지시어를 사용하여 선언<br>
		&lt;%@ taglib prefix="접두어" uri="라이브러리 파일상의 url주소" %&gt;
	</p>
	
	<h4>* JSTL Core Library</h4>
	<p>변수, 조건문, 반복문 등 로직과 관련된 문법을 제공</p>
	
	<a href="2_core.jsp">JSTL Core Library</a>
	
	<h4>* JSTL Formating Library</h4>
	<p>숫자, 날짜 및 시간 데이터의 출력 형식을 지정할 때 사용한다</p>
	
	<a href="3_fmt.jsp">Format Library</a>
</body>
</html>