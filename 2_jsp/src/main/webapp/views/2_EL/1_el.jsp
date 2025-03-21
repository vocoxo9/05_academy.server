<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="model.vo.Student" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 기본문법</title>
</head>
<body>

<%-- 
	<h3>기존 방식(스크립틀릿, 표현식)으로 각 영역(scope)의 데이터를 화면에 출력</h3>
	<% 
		// request scope의 데이터를 가져오기
		String classRoom = (String)request.getAttribute("classRoom");
		Student me = (Student)request.getAttribute("student");
		
		// session scope의 데이터 가져오기
		String academy = (String)session.getAttribute("academy");
		Student sj = (Student)session.getAttribute("student2");
	%>
	
	<p>
		* 학원 : <%= academy %><br>
		* 강의장 : <%= classRoom %><br>
		* 내 정보 : <%= me.getName() %> <%= me.getAge() %> <%= me.getGender() %><br>
		* 짝꿍 정보 : <%= sj %>
	</p>
--%>

	<h3>EL을 사용하여 보다 쉽게 각 scope영역의 데이터를 화면에 출력</h3>
	<p>
		EL을 이용하면 getXXX 메소드를 사용하지 않고 키값만 제시하여 바로 접근이 가능함 <br>
		기본적으로 EL은 JSP 내장 객체를 구분하지 않고 모든 내장 객체의 키값을 검색하여 존재하는 경우 그 값을 가져오도록 되어있음
	</p>
	
	<p>
		* 학원 : ${ academy } <br>
		* 강의장 : ${ classRoom } <br>
		* 내 정보 : ${ student.name } ${ student.age } ${ student.gender } <br>
		* 짝꿍 정보 : ${ student2 } 
	</p>
	
	<h3>동일한 키값으로 저장된 데이터 확인</h3>
	- scope 값 : ${ scope }
	<!-- 
		EL에서는 동일한 키값으로 저장된 데이터가 있을 경우
		공유 범위가 가장 작은 scope부터 검색을 함
		
		page < request < session < application
	 -->
	 
	 - 테스트 : @@${ test }@@ <!-- 키값에 해당하는 값이 없을 경우 빈 값으로 표시됨 -->
	 
	 <h3>page scope에 데이터 담아보기</h3>
	 <%
	 	pageContext.setAttribute("scope", "page!");
	 %>
	 
	 * page scope : ${ scope } 또는 ${ pageScope.scope } <br>
	 * request scope : ${ requestScope.scope } <br>
	 * session scope : ${ sessionScope.scope } <br>
	 * application scope : ${ applicationScope.scope }
</body>
</html>