<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<form method="post" action="04_testLogin.jsp">
	<label for="userid"> 아이디 :  </label>
	<input type="text" name="id" id="userid"><br>
	<label for="passwd">비밀번호 : </label>
	<input type="password" name="pwd" id="passpwd"><br>
	
	<input type="submit" value="로그인">
</form>


</body>
</html>