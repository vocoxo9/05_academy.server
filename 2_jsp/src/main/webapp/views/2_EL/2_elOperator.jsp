<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연산자</title>
<style>
	h3{text-decoration: underline;}
</style>
</head>
<body>
	<h1>EL 연산자</h1>
	
	<h3>* 산술 연산</h3>
	- 기존 : 10000 + 10 = <%= (int)request.getAttribute("big") + (int)request.getAttribute("small") %>
	<br><br>
	
	- EL 방식 : 10000 + 10 = ${ big + small }<br>
	10000 - 10 = ${ big - small } <br>
	10000 * 10 = ${ big * small } <br>
	10000 / 10 = ${ big / small } 또는 ${ big div small }<br>
	10000 % 10 = ${ big % small } 또는 ${ big mod small }<br>
	<br>
	
	<h3>* 대소 비교 연산</h3>
	10000 &gt; 10 = ${ big > small } 또는 ${ big gt small } <br>
	10000 &lt; 10 = ${ big < small } 또는 ${ big lt small } <br>
	10000 &gt;= 10 = ${ big >= small } 또는 ${ big ge small } <br>
	10000 &lt;= 10 = ${ big <= small } 또는 ${ big le small } <br>
	<br>
	
	<h3>* 동등 비교 연산</h3>
	- s1과 s2의 값이 일치하는가? ${ s1 == s2 } <br>
	- s2와 s4의 값이 일치하는가? ${ s2 == s4 } 또는 ${ s2 eq s4 }<br>
	<%-- EL에서는 문자열에 대한 동등비교가 자바에서의 equals와 같이 동작된다 --%>
	
	- s2와 s3의 값이 일치하지 않는가? ${ s2 != s3 } 또는 ${ s2 ne s3 } <br> <%-- non equal --%>
	
	- small에 담긴 값이 10인가? ${ small == 10 } 또는 ${ small eq 10 } <br>
	
	- s3에 담긴 값이 '화이팅...'과 일치하는가? ${ s3 == '화이팅...' } 또는 ${ s3 == "화이팅..." } <br>
	<%-- EL에서는 문자열 리터럴 표현 시 작은따옴표, 큰따옴표 상관없이 사용 가능하다 --%>
	<br>
	
	<h3>* 객체가 null인지, 리스트가 비어있는 지 체크</h3>
	- student1이 null인가? ${ student1 == null } 또는 ${ student1 eq null } <br>
	- student2가 null인가? ${ student2 eq null } 또는 ${ empty student2 } <br>
	- list1이 비어있는가? ${ empty list1 } <br>
	- list2가 비어있는가? ${ empty list2 } <br>
	- list2가 비어있지 않은가? ${ not empty list2 } <br>
	<br>
	
	<h3>* 논리 연산자</h3>
	- true && true  : ${ true && true } 또는 ${ true and true } <br>
	- true || false : ${ true || false } 또는 ${ true or false } <br>
	<br>
	<hr>
	
	+ big이 small보다 크고 list1이 비어있는가?
	${ big gt small and empty list1 } 또는 ${ big > small and empty list1 }
	
</body>
</html>












