<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표 </title>
</head>
<body>
<h1> 회원의 정보 입력 폼</h1>
<form action= "01_addMember.jsp" method="post">
	<label for="name"> 이 름 : </label>
	<input type="text" name="name" id="name"><br>

	<label for="userid"> 아 이 디 : </label>
	<input type="text" name="userid" id="userid"><br>
	
	<label for="pwd"> 비밀번호 : </label>
	<input type="password" name="pwd" id="pwd"><br>
	
	<label for="email"> 이메일 : </label>
	<input type="email" name = "email" id="email"><br>
	
	<label for="phone"> 전화번호 : </label>
	<input type="number" name = "phone" id="phone"> <br>
	
	<label for="grade"> 등급 : </label>
	<input type="radio" name = "grade" id="grade" value="1" checked > 관리자
	<input type="radio" name = "grade" id="grade" value="0"> 일반회원 <br>
	<input type="submit" value="전송"> 	
	<input type="reset" value="취소">
</form>
</body>
</html>