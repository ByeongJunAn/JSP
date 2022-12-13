<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%! 
	String str ="안녕하세요!";
	int a =5, b= -5;
	
	public int abs(int n) {
		if(n < 0 ) {
			n= -n;
		}
		return n;
	}
	%>
	
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>변수와 메소드 선언하기</title>
</head>
<body>
	
	<%
		//스크립트릿에서의 주석 => /**/
		/* out.print(str+"<br>");
		out.print(a + "의 절대값 : " + abs(a) + "<br>");
		out.print(b + "의 절대값 : " + abs(b) + "<br>"); */
	%>	
		<!-- html 주석도 가능 -->
		<%-- 간단한 인사말 --%>
		<%--인삿말을 str 변수에 저장한다. --%>	
		<%= str %> <br>
		<%= a %>의 절대값 : <%=abs(a) %><br>
		<%= b %>의 절대값 : <%=abs(b) %><br>
	
</body>
</html>