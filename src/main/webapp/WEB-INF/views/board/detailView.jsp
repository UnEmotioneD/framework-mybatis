<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardDetail.jsp</title>
</head>
<body>
	<h1>게시글 상세보기</h1>
	<hr>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${board.boardNo}</td>
				<td>${board.boardTitle}</td>
				<td>${board.boardContent}</td>
				<td>${board.boardWriter}</td>
				<td>${board.readCount}</td>
				<td>${board.regDate}</td>
			</tr>
		</tbody>
	</table>
</body>
</html>