<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Standard Action Tag - include</title>
</head>
<body>
	<h3>jsp:include</h3>
	<p>
		또 다른 페이지를 포함하고자 할 때 쓰는 태그
	</p>
<%-- 
	<%@ include file="footer.jsp" %>
	<br>
	year 변수로 접근(사용): <%= year %>
	<br>
	포함된 페이지의 변수로 접근 가능
	<% String year = "2020"; %>
	단, 같은 이름의 변수 선언 불가
--%>

	<jsp:include page="footer.jsp"></jsp:include> <br>
	<jsp:include page="footer.jsp" />
	<%-- year변수 : <%= year %> --%>
	<p>
		* include하고 있는 페이지에 선언된 변수를 공유하지 않음
		=> 동일한 이름의 변수를 선언할 수 있음
	</p>
	<% String year = "2020"; %>
	<p>
		*include되는 페이지로 데이터(값)를 전달할 수 있음
	</p>
	
	<jsp:include page="footer.jsp">
		<jsp:param name="month" value="3"/>
	</jsp:include>
</body>
</html>