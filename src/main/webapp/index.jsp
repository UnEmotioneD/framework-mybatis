<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
	<h1>Framework - MyBatis</h1>
	<hr>
	<pre>
	Framework : 개발에 필요한 기본적인 기능들을 일정한 고주오 규칙대로 미리 구현해둔 툴

	개발자가 좀 더 효율적으로 애플리케이션을 만들 수 있도록 재사용 가능한 코드와 도구들의 집합
	아키택쳐와 규칙을 따르므로 코드 구조가 체계적이고 유지보수가 용이하다
	여러가지 기본적인 기능들을 제공해서 개발 시간을 단축시킬 수 있다
	
	MyBatis :  JAVA 와 DB 간의 상호 작용을 간편하게 하기 위한 프레임워크
	영속성 프레임워크 : 프로그램이 종료되어도 데이터가 유지도는 성질(속성)
	
	특징)
	1. 자동 매핑 : DB 의 결과를 JAVA 객체로 자동으로 매핑
	2. XML 파일에 SQL 작성 : SQL 문이 JAVA 코드와 분리되어 가독성 및 유지보수가 용이하다
	3. 도적 SQL 지원 : if, choose, foreach 같은 구문을 이용하여, 동적인 SQL 문 작성이 가능하다
	4. SQL 재사용 : XML 에 장석된 하나의 SQL 을 여러곳에서 사용이 가능하다
	</pre>
	<hr>
	<%-- 
		sessionScope (하나 브라우저에서 값을 공유할 수 있는 범위)에 등록하는 이유 : 
		여러 .jsp 에서 가져다가 쓸 수 있도록 
	--%>
	<c:if test="${empty sessionScope.loginMember}">
		<h3>
			<a href="/member/loginFrm">로그인 페이지로 이동</a>
		</h3>
	</c:if>
	<c:if test="${not empty sessionScope.loginMember}">
		<ul>
			<li><a href="/member/allMember">전체 회원 조회</a></li>
		</ul>
	</c:if>
</body>
</html>