<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 시작하기</title>
<style>
	h1 {text-align : center;}
	h2 {text-decoration: underline;}
</style>
</head>
<body>
	<h1>JSP(Java Server Page)</h1>
	<br>
	
    <p>
        JSP란, HTML코드 내에서 Java 코드를 쓸 수 있는 <b>자바 언어</b>이다. <br>
        Servlet만으로 응답화면을 구현할 때 복잡하고 불편했던 부분을 간단하게 하는 기능이다. <br>
        => 즉, JSP의 가장 큰 장점은
        Servlet에서는 비즈니스 로직에만 집중하고 <br>
        JSP에서는 프리젠테이션 로직(화면 구현)에 집중하도록 분리하는 것이다.
    </p>

    <hr>

    <a href="views/1_Basic/1_jsp_basic.jsp">JSP 기본 문법</a>
    
    <hr>
    
    <h2>* EL(Expression Language)</h2>
    <p>
    	기존에 사용했던 표현식(출력식) : &lt;%= 변수/메소드호출 %&gt; <br>
    	
    	위의 표현식과 비슷하게 jsp상에 표현하고자 하는 값을 작성하는 방법 <br>
    	=>\${ 변수/메소드호출 } 형식으로 작성
    </p>
    
    <%-- 서블릿으로 요청 시 반드시 context path 뒤에 url이 붙어야 한다 --%>
    <a href="/2_jsp/el.do"></a>
    <a href="el.do">[1] EL 기본 문법</a>
    <a href="operator.do">[2] EL 연산자</a>
    
    <hr>
    
    <h2>* Action Tag</h2>
    <p>
    	jsp 페이지에서 어떤 동작을 수행하고자 할 때 사용하는 문법
    </p>
    
    <h3>* 표준 액션 태그(Standard Action Tag)</h3>
    <p>jsp 페이지에서 바로 사용 가능한 태그 => 모든 태그명 앞에 <b>jsp:</b> 접두어를 붙여서 사용</p>
    <a href="views/3_StandardAction/1_include.jsp">[1] jsp:include</a>
    <%-- 2_jsp/views/3_StandardAction/1_include.jsp --%>
    <a href="views/3_StandardAction/2_forward.jsp">[2] jsp:forward</a>
    
    <br><br>
    <h3>* 커스텀 액션 태그(Custom Action Tag)</h3>
    <p>
    	jsp 페이지에서 바로 사용 불가능 (별도의 라이브러리 필요)
    	=> 가장 대표적인 라이브러리 : jstl
    </p>
    <h4>JSTL?</h4>
    <p>
    	jsp에서 사용되는 커스텀 액션 태그,<br>
    	공통적으로 사용되는 코드들을 합하여 보다 쉽게 사용할 수 있도록
    	태그화하여 표준으로 제공하는 라이브러리
    </p>
    
    <h4>라이브러리 추가</h4>
    <ol>
    	<li><a href="https://tomcat.apache.org/">톰캣사이트</a> 접속</li>
    	<li>
    		메뉴에서 taglib 메뉴를 찾아 접속 (Download - Taglibs)
    	</li>
    	<li>4개의 라이브러리(.jar) 파일 다운로드</li>
    	<li>WEB-INF/lib/ 위치에 라이브러리 파일 추가</li>
    </ol>
    
    <a href="views/4_CustomAction/1_jstl.jsp">JSTL 문법</a>
</body>
</html>