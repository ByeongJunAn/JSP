<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 이 페이지는 에러 페이지입니다. "마우스 우클릭 - 검사에 안나타남"--%>
<!-- error.jsp에 표시해야 함 "마우스 우클릭 - 검사에 나타남" -->
<%@ page isErrorPage= "true" %>
<!DOCTYPE >
<html >
<head>
<meta charset=UTF-8 />
<title>에러PAGE</title>
</head>
<body>
다음과 같이 에러가 발생했습니다.
	<%= exception.getMessage() %>
</body>
</html>