<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 수정</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/employees.js"></script>
</head>
<body>
<div>
	<div id="wrap" align="center">
	<h1> 프로필 수정</h1>
	<form name="frm" method="POST" action="EmployeesServlet">
		<input type="hidden" name="command" value="employees_update">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" size="20" name="id" value="${employees.id}"> * 필수</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" size="20" name="pass"> * 필수 (게시물 수정, 삭제시 필요합니다.)</td>
			</tr>
			<tr>
				<th>name</th>
				<td><input type="text" size="10" name="name" value="${employees.name}"></td>
			</tr>
			<tr>
				<th>등급</th>
				<td><input type="text" size="10" name="lev" value="${employees.lev}"></td>
			</tr>
			<tr>
				<th>입사일</th>
				<td>
					<input type="text" name="enter">${employees.enter}></td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<input type="text" name="gender">${employees.gender}></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>
					<input type="text" name="phone">${employees.phone}></td>
			</tr>
			
		</table>
		<br><br>
		<input type="submit" value="등록" onclick="return employeesCheck()">
		<input type="reset" value="다시작성">
		<input type="button" value="목록" onclick="location.href='EmployeesServlet?command=employees_List'">
	</form>
	</div>
</div>
</body>
</html>