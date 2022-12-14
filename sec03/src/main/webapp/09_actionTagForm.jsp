<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form page</title>
</head>
<body>
<form action="09_actionTagTest.jsp">
	<label for="userid"> 아이디 :  </label>
	<input type="text" name="id" id="userid"><br>
	<label for="passwd">비밀번호 : </label>
	<input type="password" name="pwd" id="passpwd"><br>
	<input type="radio" name="loginCheck" value="user" checked> 사용자
	<input type="radio" name="loginCheck" value="manager" > 관리자<br>
	<input type="submit" value="로그인">

</form>
</body>
</html>