<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- Core Library 등록(선언) --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- Function Library 등록(선언) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - Function Library</title>
</head>
<body>
	<h2>* Function Library</h2>
	<p>
		EL 내에서 사용할 수 있는 문자열, 배열, 컬렉션 조작함수를 제공
	</p>
	
	<c:set var="data" value="Oh my god" />
	- data : ${ data }<br>
	- 문자열 길이 : ${ data.length() } 또는 ${ fn:length(data) }	<br>
	- 'my'의 시작인덱스 : ${ fn:indexOf(data, "my") }	<br>
	- 모든 영문자를 대문자로 변경 : ${ fn:toUpperCase(data) }	<br>
	- 모든 영문자를 소문자로 변경 : ${ fn:toLowerCase(data) }	<br>
</body>
</html>