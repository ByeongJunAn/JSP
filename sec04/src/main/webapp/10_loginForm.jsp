<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<form action= "10_testLogin.jsp" method="post">
	<label for="userid"> 아 이 디 : </label>
	<input type="text" name="id" id="userid"><br>
	
	<label for="pwd"> 비밀번호 : </label>
	<input type="password" name="pwd" id="pwd"><br>
	
	<input type="submit" value="로그인"> 	
</form>
</body>
</html>