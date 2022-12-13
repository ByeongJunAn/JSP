<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8 >

<title>Insert title here</title>

</head>
<body>
	<form name="frm" method="post" action="02_research.jsp">
	이름 : <input type="text" name="name"><br>
	성별 : <input type="radio" name="gender" value="남자">남자
		  <input type="radio" name="gender" value="여자">여자<br>
	좋아하는 계절 : <input type="checkbox" name="season" value="1">봄
				 <input type="checkbox" name="season" value="2">여름
				 <input type="checkbox" name="season" value="3">가을
				 <input type="checkbox" name="season" value="4">겨울	
	 <input type="submit" value="전송" onclick="return check()">
	 
  </form>
	
</body>
</html>