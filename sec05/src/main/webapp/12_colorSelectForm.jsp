<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSTL 예제(if) </title>
</head>
<body>
<form action="12_colorSelect.jsp">
	<label for="color">색상을 선택하세요.</label><br>
	<select id="color" name="color">
		<option value="1">빨강</option>
		<option value="2">노랑</option>
		<option value="3">초록</option>
	
	</select>
	<br>
	<p>
	
	<label for="fruit">과일을 선택하세요.</label><br>
	<select id="fruit" name="fruit">
		<option value="1">사과</option>
		<option value="2">배</option>
		<option value="3">포도</option>
	
	</select>
	
	<br>
	<input type="submit" value="전송">
	
</form>
</body>
</html>