<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 에러 발생 페이지 --%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html >
<head>
<meta charset=UTF-8 />
<title>나눗셈 페이지</title>
</head>
<body>
0으로 나누는 것은 불능입니다. 
<%=2/0 %>
</body>
</html>