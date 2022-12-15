<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>request info</title>
</head>
<body>
컨텍스트 패스 : <%=request.getContextPath() %><br>
요청방식 : <%=request.getMethod() %><br>
요청한 URL : <%= request.getRequestURL() %><br>
요청한 URI : <%= request.getRequestURI() %><br>
서버의 이름 : <%= request.getServerName() %><br>
포로토콜 : <%= request.getProtocol() %><br>
<br>
앱 서버 정보 : <%= application.getServerInfo() %>
앱 컨텍스트 정보 : <%= application.getContextPath() %><br>
앱 리얼패스 : <%= application.getRealPath("03_requestInfo.jsp") %><br>
MIME 타입 : <%= application.getMimeType("바탕화면.jpg") %><br>


</body>
</html>