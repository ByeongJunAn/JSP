<%@page import="java.net.URLEncoder"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String id="gildong";
String pwd="1234";
String name="홍길동";
request.setCharacterEncoding("UTF-8");
if(id.equals(request.getParameter("id")) &&  
	pwd.equals(request.getParameter("pwd"))	) {
	response.sendRedirect( "04_main.jsp?name=" + URLEncoder.encode(name,"UTF-8"));
} else{
	response.sendRedirect("04_loginForm.jsp");
}
	
%>  
    
<!DOCTYPE >
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<f:view>

</f:view>
</body>
</html>