<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 </title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	<h1> 로그인</h1>

	<form action= "login.do" method="post" name="frm">
		<table>
			<tr>
			
				<td>아 이 디</td>
	
	<td><input type="text" name="userid" id="${userid}"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		 
		<td><input type="password" name="pwd" id="pwd"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="로그인" onclick="return loginCheck()">
		 	
			<input type="reset" value="취소">
		
	
			<input type="button"  value="회원가입" onclick="location.href='join.do'">
			</td>
	</tr>
	<tr>
		<td colspan="2">${message}</td>
	</tr>
	</table>
	</form>
</body>
</html>