<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage.jsp</title>
</head>
<body>
	<h1>회원 관리 - 마이페이지</h1>

	<hr>

	<form action="/member/update" method="post">
		<table border="1">
			<tr>
				<th>아이디</th>
				<%-- sessionScope 처럼 앞에다가 지정해주지 않으면 범위가 좁은거 부터 찾아서 온다 --%>
				<td><input type="text" name="memberId"
					value="${loginMember.memberId}"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="memberPw"
					value="${loginMember.memberPw}"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="memberEmail"
					value="${loginMember.memberEmail}"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="memberName"
					value="${loginMember.memberName}"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="memberPhone"
					value="${loginMember.memberPhone}"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="memberAddr"
					value="${loginMember.memberAddr}"></td>
			</tr>
			<tr>
				<th>등급</th>
				<td><c:choose>
						<%-- ${} 를 사용하는것은 EL 문법 --%>
						<c:when test="${loginMember.memberLevel == 1}">
						관리자
						</c:when>
						<c:when test="${loginMember.memberLevel == 2}">
						정회원
						</c:when>
						<c:otherwise>
						준회원
						</c:otherwise>
					</c:choose></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><span> ${loginMember.enrollDate}</span>
			</tr>

		</table>
	</form>

	<script>
		
	</script>
</body>
</html>