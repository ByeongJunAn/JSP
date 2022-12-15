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
secondPage.jsp : <br>
하나의 페이지 속성 : <%=pageContext.getAttribute("name") %><br>
하나의 요청 속성 : <%= request.getAttribute("name") %><br>
하나의 세션 속성 : <%= session.getAttribute("name") %><br>
하나의 애플리케이션 속성 : <%= application.getAttribute("name") %><br>

<a href = "07_thirdPage.jsp"> 또 다른 페이지로 이동</a>


</body>
</html>