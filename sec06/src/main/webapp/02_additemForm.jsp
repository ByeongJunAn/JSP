<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here </title>
</head>
<body>

<h1> 정보 입력 폼</h1>
<form action= "02_additem.jsp" method="post">
	<label for="name"> 상품명 : </label>
	<input type="text" name="name" id="name"><br>

	
	<label for="price" > 가격 : </label>
	<input type="number" name = "price" id="price"> <br>

	<label for="des"> 설명 : </label>
	<input type="text" name="des" id="des"><br>
	
	<input type="submit" value="전송"> 	
	<input type="reset" value="취소">
</form>

</body>
</html>