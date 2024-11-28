<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>allBoardList</title>
</head>
<body>
	<h1>게시글 - 전체 게시글 조회(페이징)</h1>

	<hr>
	<%--
		게시글 번호는 오라클 시퀸스 객체로 자동 채번되어 삽입되어지는 값
		게시글 등록시 오류가 발생해도 시퀀스는 다음 번호를 채번한다 => 번호간에 빈값이 생길 수 있음
		사용자에게 보여지는 값은 == 행번호 (rNum)
		실제 수정, 삭제 시 SQL where 조건식에 작성될 값은 == 게시글 번호
	 --%>

	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		<c:forEach var="b" items="${boardList}">
			<tr>
				<td>${b.RNum}</td>
				<td>${b.boardTitle}</td>
				<td>${b.boardContent}</td>
				<td>${b.boardWriter}</td>
				<td>${b.readCount}</td>
				<td>${b.regDate}</td>
			</tr>
		</c:forEach>
	</table>
	<h4>${pageNavi}</h4>
</body>
</html>
