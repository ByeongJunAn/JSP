<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록 </title>
</head>
<body>
<div id="wrap">
	<h1>게시글 목록</h1>
	<table class=list>
		<tr>
			<td colspan="5" style="border:white; text-align:right">
				<a href="BoardServlet?command=board_write_form" >게시글 등록</a>
			</td>
		</tr>
		
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>지은이</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.num}</td>
				<td><a href="BoardServlet?command=board_view&num=${board.num}">
				${board.title}</a></td>
				<td>${board.name}</td>
				<td><fmt:formatDate value="${board.writedate}"/><td>
				<td>${board.readcount}</td>
		
		</c:forEach>
		
	</table>


</div>
</body>
</html>