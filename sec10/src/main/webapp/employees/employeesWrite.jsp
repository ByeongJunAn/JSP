<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 정보 등록 </title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
<div id="wrap" align="center">
	<h1>프로필 등록</h1>
	<form id="frm" method="post" action="EmployeesServlet">
		<input type="hidden" name="command" value="employees_write">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" required> * 필수</td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pass" required> * 필수(게시물 수정, 삭제시 필요합니다.)</td>
			</tr>
				
			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			
			<tr>
				<th>등급</th>
				<td><input type="text" name="lev" > </td>
			</tr>	
			
			
			<tr>
				<th>성별</th>
				<td><input type="radio" name="gender" value="man"> 남자
					<input type="radio" name="gender" value="woman"> 여자
				</td>
			</tr>
			
			<tr>
				<th>전화 번호</th>
				<td><input type="number" name="phone"></td>
			</tr>
			
		</table>
		<br></br>
		<input type="submit" value="등록" onclick="return employeesCheck()">
		<input type="reset" value="다시작성">
		<input type="button" value="목록" onclick="location.href='EmployeesServlet?command=employees_List'">	
	
	
	</form>

</div>
</body>
</html>