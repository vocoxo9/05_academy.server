<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - fmt</title>
</head>
<body>
	<h1>* formatNumber</h1>
	<p>
		숫자 데이터의 형식(포맷)을 지정하는 태그 <br> 
		- 표현하고자 하는 숫자 데이터의 형식을 통화기호, % 등으로 원하는 방식에 맞게 지정하는 태그 <br> 
		fmt:formatNumber value="출력할값"
		[groupingUsed="true|false"] [type="percent|currency"
		currencySymbol="문자"]
	</p>

	<c:set var="n1" value="123456789" />
	<c:set var="n2" value="0.65" />
	<c:set var="n3" value="50000" />

	* n1의 값 : ${ n1 }
	<br> * 세자리마다 구분되어 출력 :
	<fmt:formatNumber value="${ n1 }" />
	<br>
	<fmt:formatNumber value="${ n1 }" groupingUsed="false" />

	<br> * percent :
	<fmt:formatNumber value="${ n2 }" type="percent" />
	(
	<fmt:formatNumber value="${ n2 }" />
	)
	<br> * currency :
	<fmt:formatNumber value="${ n3 }" type="currency" />
	<br> * symbol :
	<fmt:formatNumber value="${ n3 }" type="currency" currencySymbol="$" />

	<br>
	<br>

	<h3>* formatDate</h3>
	<p>
		날짜 및 시간 데이터의 포맷(형식)을 지정하여 출력한다 <br>
		<i>단, java.util.Date 객체를 사용한다</i>
	</p>

	<c:set var="now" value="<%=new java.util.Date()%>" />
	- now : ${ now }
	<br>

	<ul>
		<li>날짜 : <fmt:formatDate value="${ now }" type="date" />
		</li>
		<li>시간 : <fmt:formatDate value="${ now }" type="time" />
		</li>
		<li>날짜 + 시간 (둘 다 ) : <fmt:formatDate value="${ now }" type="both" />
		</li>
	</ul>
	
	<ul>
		<li>
			medium : <fmt:formatDate value="${ now }" type="both" dateStyle="medium" timeStyle="medium"/>
		</li>
		<li>
			long : <fmt:formatDate value="${ now }" type="both" dateStyle="long" timeStyle="long"/>
		</li>
		<li>
			short : <fmt:formatDate value="${ now }" type="both" dateStyle="short" timeStyle="short"/>
		</li>
		<li>
			full : <fmt:formatDate value="${ now }" type="both" dateStyle="full" timeStyle="full"/>
		</li>
		<li>
			pattern : <fmt:formatDate value="${ now }" type="both" pattern="yyyy-MM-dd(E) HH:mm:ss"/> 
		</li>
	</ul>
</body>
</html>