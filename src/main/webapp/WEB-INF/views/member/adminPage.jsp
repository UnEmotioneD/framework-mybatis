<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminPage.jsp</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
	<h1>회원 관리 - 관리자 페이지</h1>

	<hr>

	<table border="1">
		<tr>
			<th>선택</th>
			<th>회원번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>등급</th>
			<th>가입일</th>
			<th>변경</th>
		</tr>
		<c:forEach var="m" items="${list}">
			<tr>
				<td><input type="checkbox"></td>
				<td class="memberNo">${m.memberNo}</td>
				<td>${m.memberId}</td>
				<td>${m.memberName}</td>
				<td>${m.memberEmail}</td>
				<td>${m.memberPhone}</td>
				<td>${m.memberAddr}</td>

				<td><select name="memberLevel">
						<c:choose>
							<c:when test="${m.memberLevel == 1}">
								<option value="1" selected>관리자</option>
								<option value="2">정회원</option>
								<option value="3">준회원</option>
							</c:when>
							<c:when test="${m.memberLevel == 2}">
								<option value="1">관리자</option>
								<option value="2" selected>정회원</option>
								<option value="3">준회원</option>
							</c:when>
							<c:otherwise>
								<option value="1">관리자</option>
								<option value="2">정회원</option>
								<option value="3" selected>준회원</option>
							</c:otherwise>
						</c:choose>
				</select></td>

				<td>${m.enrollDate}</td>
				<%-- 매개변수 this는 그 버튼 자체 --%>
				<td><button type="button" onclick="chgLevel(this)">등급변경</button></td>
			</tr>
		</c:forEach>
	</table>

	<script>
		function chgLevel(obj) {
			// 버튼을 클릭한 행의 회원 등급을 변경 -> 서버로 전달해야 하는 값? memberNo, memberLevel
			// $(obj) : button 그 자체
			// $(obj).parent() : td
			// $(obj).parents('tr') : tr
			
			let memberNo = $(obj).parents('tr').find(".memberNo").html();
		}
	</script>
</body>
</html>