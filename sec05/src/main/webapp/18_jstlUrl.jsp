<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL URL, import </title>
</head>
<body>
<c:url value="은하.png" var="data"/>
<h3>${data}</h3>
<img src="${data}" width="150" height="150">

</body>
</html>